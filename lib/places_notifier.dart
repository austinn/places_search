import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:places_search/models/prediction/prediction.dart';
import 'package:places_search/places_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'places_notifier.g.dart';

@riverpod
class PlacesItemListNotifier extends _$PlacesItemListNotifier {
  Timer? _debounce;

  @override
  FutureOr<List<Prediction>> build(Key? id) {
    return [];
  }

  Future<List<Prediction>> searchInventoryItems(
    String query,
    List<String> countries,
    String apiKey,
    int debounceTime,
  ) async {
    state = const AsyncValue.data([]);

    query = query.trim().toLowerCase();

    if (query.isEmpty) {
      _debounce?.cancel();
      // state = const AsyncValue.data([]);
      return [];
    }
    if (_debounce?.isActive ?? false) _debounce?.cancel();

    state = const AsyncValue.loading();
    _debounce = Timer(Duration(milliseconds: debounceTime), () async {
      state = await AsyncValue.guard(() {
        final repo = ref.read(placesRepositoryProvider);
        if (kIsWeb) {
          return repo.getPredictionsForWeb(query, countries, apiKey);
        }
        return repo.getPredictions(query, countries, apiKey);
      });
    });
    return [];
  }
}
