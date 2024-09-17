// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cardTotalHash() => r'ed17a08a5ad2e53a28ceaa06405c037db6b76d2d';

/// See also [cardTotal].
@ProviderFor(cardTotal)
final cardTotalProvider = AutoDisposeProvider<int>.internal(
  cardTotal,
  name: r'cardTotalProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cardTotalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CardTotalRef = AutoDisposeProviderRef<int>;
String _$cartNotifierHash() => r'55377236dc33d8a2b40a1dbc4dc223114921f676';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeAsyncNotifierProvider<CartNotifier, List<Product>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeAsyncNotifier<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
