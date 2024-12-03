import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:places_search/models/place_details/place_details.dart';
import 'package:places_search/models/prediction/prediction.dart';
import 'package:places_search/places_notifier.dart';
import 'package:places_search/places_repository.dart';

typedef ItemWidgetBuilder<T> = Widget Function(
  BuildContext context,
  Prediction prediction,
  int index,
);

class PlaceAutoCompleteTextField extends HookConsumerWidget {
  final InputDecoration inputDecoration;
  final ValueChanged<Prediction>? onItemClicked;
  final ValueChanged<(Prediction, PlaceDetails)>? getPlaceDetails;
  final bool isLatLngRequired;

  final TextStyle textStyle;
  final String googleAPIKey;
  final int debounceTime;
  final List<String> countries;
  final TextEditingController textEditingController;
  final ItemWidgetBuilder? itemBuilder;

  const PlaceAutoCompleteTextField({
    super.key,
    required this.textEditingController,
    required this.googleAPIKey,
    this.onItemClicked,
    this.getPlaceDetails,
    this.debounceTime = 500,
    this.inputDecoration = const InputDecoration(),
    this.isLatLngRequired = true,
    this.textStyle = const TextStyle(),
    this.countries = const ['us'],
    this.itemBuilder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layerLink = useState(LayerLink());
    final overlay = useState<OverlayEntry?>(null);
    final state = ref.watch(placesItemListNotifierProvider(key));

    OverlayEntry? createOverlayEntry() {
      if (context.findRenderObject() != null) {
        RenderBox renderBox = context.findRenderObject() as RenderBox;
        var size = renderBox.size;
        var offset = renderBox.localToGlobal(Offset.zero);
        return OverlayEntry(
          builder: (context) => Positioned(
            left: offset.dx,
            top: size.height + offset.dy,
            width: size.width,
            child: CompositedTransformFollower(
              showWhenUnlinked: false,
              link: layerLink.value,
              offset: Offset(0.0, size.height + 5.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(-4, 8),
                    ),
                  ],
                ),
                child: Card(
                  // shape: const RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(8),
                  //     bottomRight: Radius.circular(8),
                  //   ),
                  // ),
                  elevation: 0,
                  child: ClipRRect(
                    // borderRadius: const BorderRadius.only(
                    //   bottomLeft: Radius.circular(8),
                    //   bottomRight: Radius.circular(8),
                    // ),
                    child: Consumer(
                      builder: (context, ref, child) {
                        final innerState = ref.watch(placesItemListNotifierProvider(key));
                        return innerState.when(
                          error: (_, __) => const Center(
                            child: Text('Something went wrong'),
                          ),
                          loading: () {
                            return ListView.builder(
                              itemCount: 3,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return const ListTile();
                              },
                            );
                          },
                          data: (data) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: data.length,
                              physics: (innerState.hasValue && innerState.value!.isEmpty)
                                  ? const NeverScrollableScrollPhysics()
                                  : const AlwaysScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                final prediction = data[index];

                                if (itemBuilder != null) {
                                  return itemBuilder?.call(context, prediction, index);
                                }

                                return Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Card(
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(8),
                                      onTap: () async {
                                        if (onItemClicked != null) {
                                          onItemClicked!(prediction);
                                        }

                                        if (!isLatLngRequired) {
                                          return;
                                        }

                                        try {
                                          final (Prediction, PlaceDetails)? result;
                                          if (kIsWeb) {
                                            result = await ref
                                                .read(placesRepositoryProvider)
                                                .getPlaceDetailsFromPlaceIdForWeb(prediction, googleAPIKey);
                                          } else {
                                            result = await ref
                                                .read(placesRepositoryProvider)
                                                .getPlaceDetailsFromPlaceId(prediction, googleAPIKey);
                                          }
                                          if (result != null && getPlaceDetails != null) {
                                            getPlaceDetails?.call(result);
                                          }

                                          overlay.value!.remove();
                                          overlay.value = null;
                                        } catch (e) {
                                          // log.warning(e);
                                        }
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        child: Text(
                                          prediction.description,
                                          style: textStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
      return null;
    }

    return CompositedTransformTarget(
      link: layerLink.value,
      child: TextFormField(
        decoration: inputDecoration.copyWith(
          suffix: state.isLoading
              ? const SizedBox(
                  height: 18,
                  width: 18,
                  child: CircularProgressIndicator(strokeWidth: 2.0),
                )
              : inputDecoration.suffix,
        ),
        style: textStyle,
        controller: textEditingController,
        onChanged: (v) async {
          if (v.isEmpty && overlay.value != null) {
            overlay.value!.remove();
            overlay.value = null;
          }
          if (v.isNotEmpty && overlay.value == null) {
            overlay.value = createOverlayEntry();
            Overlay.of(context).insert(overlay.value!);
          }
          ref.read(placesItemListNotifierProvider(key).notifier).searchInventoryItems(
                v,
                countries,
                googleAPIKey,
                debounceTime,
              );
        },
      ),
    );
  }
}
