import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:places_search/models/place_details/place_details.dart' as mine;
import 'package:rxdart/rxdart.dart';

class PlaceAutoCompleteTextFieldAlternative extends StatefulWidget {
  final InputDecoration inputDecoration;
  final ValueChanged<PlacesSearchResult>? onItemClicked;
  final ValueChanged<(PlacesSearchResult, mine.PlaceDetails, (double, double))>? getPlaceDetails;
  final bool isLatLngRequired;

  final TextStyle textStyle;
  final String googleAPIKey;
  final int debounceTime;
  final List<String> countries;
  final TextEditingController textEditingController;
  final (double, double) currentLocation;

  const PlaceAutoCompleteTextFieldAlternative({
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
    required this.currentLocation,
  });

  @override
  PlaceAutoCompleteTextFieldAlternativeState createState() => PlaceAutoCompleteTextFieldAlternativeState();
}

class PlaceAutoCompleteTextFieldAlternativeState extends State<PlaceAutoCompleteTextFieldAlternative> {
  final subject = PublishSubject<String>();
  OverlayEntry? _overlayEntry;
  List<PlacesSearchResult> alPredictions = [];
  bool isLoading = false;

  TextEditingController controller = TextEditingController();
  final LayerLink _layerLink = LayerLink();
  bool isSearched = false;

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: TextFormField(
        decoration: widget.inputDecoration.copyWith(
          suffix: isLoading
              ? const SizedBox(
                  height: 18,
                  width: 18,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                  ),
                )
              : widget.inputDecoration.suffix,
        ),
        style: widget.textStyle,
        controller: widget.textEditingController,
        onChanged: (string) {
          setState(() {
            isLoading = string.isNotEmpty;
          });
          subject.add(string);
        },
      ),
    );
  }

  getLocation(String text) async {
    final places = GoogleMapsPlaces(apiKey: widget.googleAPIKey);
    final location = Location(lat: widget.currentLocation.$1, lng: widget.currentLocation.$2);
    PlacesSearchResponse response = await places.searchByText(
      text,
      location: location,
    );

    if (text.isEmpty) {
      alPredictions.clear();
      _overlayEntry!.remove();
      return;
    }

    isSearched = false;
    if (response.results.isNotEmpty) {
      alPredictions.clear();
      alPredictions.addAll(response.results);
    }
    _overlayEntry = null;
    _overlayEntry = _createOverlayEntry();
    if (context.mounted) {
      Overlay.of(context).insert(_overlayEntry!);
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    subject.stream.distinct().debounceTime(Duration(milliseconds: widget.debounceTime)).listen(textChanged);
  }

  textChanged(String text) async {
    getLocation(text);
  }

  OverlayEntry? _createOverlayEntry() {
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
                  link: _layerLink,
                  offset: Offset(0.0, size.height + 5.0),
                  child: Material(
                    elevation: 1.0,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: alPredictions.length <= 5 ? alPredictions.length : 5,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            if (index < alPredictions.length) {
                              if (widget.onItemClicked != null) {
                                widget.onItemClicked!(alPredictions[index]);
                              }
                              if (!widget.isLatLngRequired) return;
                              try {
                                getPlaceDetailsFromPlaceId(alPredictions[index]);
                                removeOverlay();
                              } catch (e, s) {
                                debugPrint(e.toString());
                                debugPrint(s.toString());
                              }
                            }
                          },
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                '${alPredictions[index].name}, ${alPredictions[index].formattedAddress ?? ''}',
                                style: widget.textStyle,
                              )),
                        );
                      },
                    ),
                  ),
                ),
              ));
    }
    return null;
  }

  removeOverlay() {
    try {
      alPredictions.clear();
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
      _overlayEntry!.markNeedsBuild();
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
    }
  }

  Future<Response?> getPlaceDetailsFromPlaceId(PlacesSearchResult prediction) async {
    var url =
        'https://corsproxy.io/?https://maps.googleapis.com/maps/api/place/details/json?placeid=${prediction.placeId}&key=${widget.googleAPIKey}';

    Response response = await Dio().get(
      url,
    );
    mine.PlaceDetails placeDetails = mine.PlaceDetails.fromJson(response.data);
    final latlng = (placeDetails.result.geometry?.location.lat ?? 0, placeDetails.result.geometry?.location.lng ?? 0);

    if (widget.getPlaceDetails != null) {
      widget.getPlaceDetails!((prediction, placeDetails, latlng));
    }
    return null;
  }
}
