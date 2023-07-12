library places_search;

import 'package:flutter/material.dart';
import 'package:places_search/model/place_details.dart';
import 'package:places_search/model/places_response.dart';
import 'package:places_search/model/prediction.dart';

import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

export 'package:places_search/model/place_details.dart';
export 'package:places_search/model/places_response.dart';
export 'package:places_search/model/prediction.dart';

class GooglePlaceAutoCompleteTextField extends StatefulWidget {
  final InputDecoration inputDecoration;
  final ValueChanged<Prediction>? onItemClicked;
  final ValueChanged<Prediction>? getPlaceDetails;
  final bool isLatLngRequired;

  final TextStyle textStyle;
  final String googleAPIKey;
  final int debounceTime;
  final List<String> countries;
  final TextEditingController textEditingController;

  GooglePlaceAutoCompleteTextField({
    required this.textEditingController,
    required this.googleAPIKey,
    this.onItemClicked,
    this.getPlaceDetails,
    this.debounceTime = 500,
    this.inputDecoration = const InputDecoration(),
    this.isLatLngRequired = true,
    this.textStyle = const TextStyle(),
    this.countries = const ["us"],
  });

  @override
  _GooglePlaceAutoCompleteTextFieldState createState() =>
      _GooglePlaceAutoCompleteTextFieldState();
}

class _GooglePlaceAutoCompleteTextFieldState
    extends State<GooglePlaceAutoCompleteTextField> {
  final subject = new PublishSubject<String>();
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
              ? SizedBox(
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
    Dio dio = new Dio();
    String url =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$text&key=${widget.googleAPIKey}";

    for (int i = 0; i < widget.countries.length; i++) {
      String country = widget.countries[i];

      if (i == 0) {
        url = url + "&components=country:$country";
      } else {
        url = url + "|" + "country:" + country;
      }
    }

    Response response = await dio.get(url);
    PlacesResponse subscriptionResponse =
        PlacesResponse.fromJson(response.data);

    if (text.length == 0) {
      alPredictions.clear();
      this._overlayEntry!.remove();
      return;
    }

    isSearched = false;
    if (subscriptionResponse.predictions.length > 0) {
      alPredictions.clear();
      alPredictions.addAll(subscriptionResponse.predictions);
    }

    //if (this._overlayEntry == null)

    this._overlayEntry = null;
    this._overlayEntry = this._createOverlayEntry();
    Overlay.of(context).insert(this._overlayEntry!);
    setState(() {
      isLoading = false;
    });
    //   this._overlayEntry.markNeedsBuild();
  }

  @override
  void initState() {
    super.initState();
    subject.stream
        .distinct()
        .debounceTime(Duration(milliseconds: widget.debounceTime))
        .listen(textChanged);
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
                  link: this._layerLink,
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
                                if (widget.onItemClicked != null)
                                  widget.onItemClicked!(alPredictions[index]);
                                if (!widget.isLatLngRequired) return;

                                getPlaceDetailsFromPlaceId(
                                    alPredictions[index]);

                                removeOverlay();
                              }
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: Text(alPredictions[index].description!)),
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
    this._overlayEntry = this._createOverlayEntry();
    Overlay.of(context).insert(this._overlayEntry!);
    this._overlayEntry!.markNeedsBuild();
  }

  Future<Response?> getPlaceDetailsFromPlaceId(Prediction prediction) async {
    var url =
        "https://maps.googleapis.com/maps/api/place/details/json?placeid=${prediction.placeId}&key=${widget.googleAPIKey}";
    Response response = await Dio().get(
      url,
    );
    PlaceDetails placeDetails = PlaceDetails.fromJson(response.data);
    prediction = prediction.copyWith(
      lat: placeDetails.result!.geometry!.location!.lat.toString(),
      lng: placeDetails.result!.geometry!.location!.lng.toString(),
    );
    if (widget.getPlaceDetails != null) widget.getPlaceDetails!(prediction);
    return null;
  }
}

PlacesResponse parseResponse(Map responseBody) {
  return PlacesResponse.fromJson(responseBody as Map<String, dynamic>);
}

PlaceDetails parsePlaceDetailMap(Map responseBody) {
  return PlaceDetails.fromJson(responseBody as Map<String, dynamic>);
}
