// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cardTotalHash() => r'00c59d5f028509967d72836160f8da3f169cba22';

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
String _$cartNotifierHash() => r'2e8409df84ffbf349a841425ce60fe06f5ee4275';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeNotifierProvider<CartNotifier, List<Product>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeNotifier<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
