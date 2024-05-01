import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:owl/widgets/async/item_list_builder.dart';
import 'package:places_search/models/place_details/place_details.dart';
import 'package:places_search/models/prediction/prediction.dart';
import 'package:places_search/places_notifier.dart';
import 'package:places_search/places_repository.dart';
import 'package:places_search/shimmer_loading_tile.dart';

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
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(-4, 8),
                  ),
                ]),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  )),
                  elevation: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    child: Consumer(
                      builder: (context, ref, child) {
                        final innerState = ref.watch(placesItemListNotifierProvider(key));
                        return ItemListBuilder(
                          value: innerState,
                          physics: (state.hasValue && state.value!.isEmpty)
                              ? const NeverScrollableScrollPhysics()
                              : const AlwaysScrollableScrollPhysics(),
                          loadingBuilder: (context) => ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: List.generate(
                              5,
                              (index) => ShimmerLoadingTile(index: index, textStyle: textStyle),
                            ),
                          ),
                          itemBuilder: (context, prediction, index) {
                            final length = innerState.value?.length ?? 0;
                            return Entry(
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.ease,
                              opacity: 0,
                              key: ValueKey(prediction.placeId),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Card(
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(8),
                                    onTap: () async {
                                      if (index < length) {
                                        if (onItemClicked != null) {
                                          onItemClicked!(prediction);
                                        }
                                        if (!isLatLngRequired) {
                                          return;
                                        }
                                        final result = await ref
                                            .read(placesRepositoryProvider)
                                            .getPlaceDetailsFromPlaceId(prediction, googleAPIKey);

                                        getPlaceDetails?.call(result);
                                        overlay.value!.remove();
                                        overlay.value = null;
                                      }
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        child: Text(
                                          prediction.description,
                                          style: textStyle,
                                        )),
                                  ),
                                ),
                              ),
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
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                  ),
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
