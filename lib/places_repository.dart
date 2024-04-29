import 'package:dio/dio.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:places_search/models/place_details/place_details.dart';
import 'package:places_search/models/places_response.dart';
import 'package:places_search/models/prediction/prediction.dart';
import 'package:places_search/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'places_repository.g.dart';

@riverpod
PlacesRepository placesRepository(PlacesRepositoryRef ref) => PlacesRepository(ref);

class PlacesRepository {
  const PlacesRepository(this.ref);

  final Ref ref;

  Future<List<Prediction>> getPredictions(String query, List<String> countries, String googleApiKey) async {
    final dio = ref.read(dioProvider);
    String url = buildUrl(countries, query, googleApiKey);
    Response response = await dio.get(url);
    return PlacesResponse.fromJson(response.data).predictions;
  }

  Future<List<Prediction>> getPredictionsForWeb(String query, List<String> countries, String googleApiKey) async {
    final sdk = FlutterGooglePlacesSdk(googleApiKey);
    final isInitialized = await sdk.isInitialized();
    if (isInitialized == null || !isInitialized) {
      return [];
    }
    final predictions = await sdk.findAutocompletePredictions(
      query,
      countries: countries,
      newSessionToken: false,
    );
    return predictions.predictions.map((e) => Prediction.fromAutocompletePrediction(e)).toList();
  }

  String buildUrl(List<String> countries, String text, String googleAPIKey, {bool useProxy = false}) {
    String url = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$text&key=$googleAPIKey';
    if (useProxy) {
      url = 'https://corsproxy.io/?$url';
    }
    for (int i = 0; i < countries.length; i++) {
      String country = countries[i];

      if (i == 0) {
        url = '$url&components=country:$country';
      } else {
        url = '$url|country:$country';
      }
    }
    return url;
  }

  Future<Response?> getPlaceDetailsFromPlaceId(
    Prediction prediction,
    Function((Prediction, PlaceDetails))? getPlaceDetails,
    String googleApiKey,
  ) async {
    var url = 'https://maps.googleapis.com/maps/api/place/details/json?placeid=${prediction.placeId}&key=$googleApiKey';

    Response response = await Dio().get(
      url,
    );
    PlaceDetails placeDetails = PlaceDetails.fromJson(response.data);
    prediction = prediction.copyWith(
      lat: placeDetails.result.geometry?.location.lat.toString(),
      lng: placeDetails.result.geometry?.location.lng.toString(),
    );
    if (getPlaceDetails != null) {
      getPlaceDetails((prediction, placeDetails));
    }
    return null;
  }
}
