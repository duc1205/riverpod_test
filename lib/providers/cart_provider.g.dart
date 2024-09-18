// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cardTotalHash() => r'd6283969705826b25028d38115ce18baf4b91b8f';

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
String _$cartNotifierHash() => r'f5bafdb135d73a78791953c8b66db97d71c34f73';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeAsyncNotifierProvider<CartNotifier, List<Products>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeAsyncNotifier<List<Products>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
