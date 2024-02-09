import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:places_search/models/place_details/place_details.dart';
import 'package:places_search/models/places_response.dart';
import 'package:places_search/models/prediction/prediction.dart';
import 'package:rxdart/rxdart.dart';

class PlaceAutoCompleteTextField extends StatefulWidget {
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
  PlaceAutoCompleteTextFieldState createState() => PlaceAutoCompleteTextFieldState();
}

class PlaceAutoCompleteTextFieldState extends State<PlaceAutoCompleteTextField> {
  final subject = PublishSubject<String>();
  OverlayEntry? _overlayEntry;
  List<Prediction> alPredictions = [];
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
    Dio dio = Dio();
    String url =
        'https://corsproxy.io/?https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$text&key=${widget.googleAPIKey}';

    for (int i = 0; i < widget.countries.length; i++) {
      String country = widget.countries[i];

      if (i == 0) {
        url = '$url&components=country:$country';
      } else {
        url = '$url|country:$country';
      }
    }

    Response response = await dio.get(url);

    PlacesResponse subscriptionResponse = PlacesResponse.fromJson(response.data);
    if (text.isEmpty) {
      alPredictions.clear();
      _overlayEntry!.remove();
      return;
    }

    isSearched = false;
    if (subscriptionResponse.predictions.isNotEmpty) {
      alPredictions.clear();
      alPredictions.addAll(subscriptionResponse.predictions);
    }

    //if (this._overlayEntry == null)

    _overlayEntry = null;
    _overlayEntry = _createOverlayEntry();
    if (context.mounted) {
      Overlay.of(context).insert(_overlayEntry!);
    }
    setState(() {
      isLoading = false;
    });
    //   this._overlayEntry.markNeedsBuild();
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
                        itemCount: alPredictions.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              if (index < alPredictions.length) {
                                if (widget.onItemClicked != null) {
                                  widget.onItemClicked!(alPredictions[index]);
                                }
                                if (!widget.isLatLngRequired) return;

                                getPlaceDetailsFromPlaceId(
                                  alPredictions[index],
                                );

                                removeOverlay();
                              }
                            },
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  alPredictions[index].description,
                                  style: widget.textStyle,
                                )),
                          );
                        },
                      )),
                ),
              ));
    }
    return null;
  }

  removeOverlay() {
    alPredictions.clear();
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
    _overlayEntry!.markNeedsBuild();
  }

  Future<Response?> getPlaceDetailsFromPlaceId(Prediction prediction) async {
    var url =
        'https://corsproxy.io/?https://maps.googleapis.com/maps/api/place/details/json?placeid=${prediction.placeId}&key=${widget.googleAPIKey}';

    Response response = await Dio().get(
      url,
    );
    PlaceDetails placeDetails = PlaceDetails.fromJson(response.data);
    prediction = prediction.copyWith(
      lat: placeDetails.result.geometry?.location.lat.toString(),
      lng: placeDetails.result.geometry?.location.lng.toString(),
    );
    if (widget.getPlaceDetails != null) {
      widget.getPlaceDetails!((prediction, placeDetails));
    }
    return null;
  }
}
