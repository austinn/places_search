// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$placesItemListNotifierHash() =>
    r'9138434e7d13f8d0bf8960f6b911095e9a020ad8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PlacesItemListNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Prediction>> {
  late final Key? id;

  FutureOr<List<Prediction>> build(
    Key? id,
  );
}

/// See also [PlacesItemListNotifier].
@ProviderFor(PlacesItemListNotifier)
const placesItemListNotifierProvider = PlacesItemListNotifierFamily();

/// See also [PlacesItemListNotifier].
class PlacesItemListNotifierFamily
    extends Family<AsyncValue<List<Prediction>>> {
  /// See also [PlacesItemListNotifier].
  const PlacesItemListNotifierFamily();

  /// See also [PlacesItemListNotifier].
  PlacesItemListNotifierProvider call(
    Key? id,
  ) {
    return PlacesItemListNotifierProvider(
      id,
    );
  }

  @override
  PlacesItemListNotifierProvider getProviderOverride(
    covariant PlacesItemListNotifierProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'placesItemListNotifierProvider';
}

/// See also [PlacesItemListNotifier].
class PlacesItemListNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PlacesItemListNotifier,
        List<Prediction>> {
  /// See also [PlacesItemListNotifier].
  PlacesItemListNotifierProvider(
    Key? id,
  ) : this._internal(
          () => PlacesItemListNotifier()..id = id,
          from: placesItemListNotifierProvider,
          name: r'placesItemListNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$placesItemListNotifierHash,
          dependencies: PlacesItemListNotifierFamily._dependencies,
          allTransitiveDependencies:
              PlacesItemListNotifierFamily._allTransitiveDependencies,
          id: id,
        );

  PlacesItemListNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final Key? id;

  @override
  FutureOr<List<Prediction>> runNotifierBuild(
    covariant PlacesItemListNotifier notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(PlacesItemListNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlacesItemListNotifierProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PlacesItemListNotifier,
      List<Prediction>> createElement() {
    return _PlacesItemListNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlacesItemListNotifierProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlacesItemListNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<Prediction>> {
  /// The parameter `id` of this provider.
  Key? get id;
}

class _PlacesItemListNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PlacesItemListNotifier,
        List<Prediction>> with PlacesItemListNotifierRef {
  _PlacesItemListNotifierProviderElement(super.provider);

  @override
  Key? get id => (origin as PlacesItemListNotifierProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
