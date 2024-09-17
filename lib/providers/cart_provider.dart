import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/models/product.dart';
import 'package:riverpod_example/shared_preferences.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Future<List<Product>> build() async {
    final newListProduct = await SharedPreferencesHelper.getProducts();
    print("store: $newListProduct");
    return newListProduct;
  }

  void addProduct(Product product) {
    final currentState = state.value ?? [];
    if (!currentState.contains(product)) {
      state = AsyncValue.data([...currentState, product]);
      SharedPreferencesHelper.saveProducts(state.value ?? []);
    }
  }

  void removeProduct(Product product) {
    final currentState = state.value ?? [];
    if (currentState.contains(product)) {
      state = AsyncValue.data(currentState.where((p) => p.id != product.id).toList());
      SharedPreferencesHelper.saveProducts(state.value ?? []);
    }
  }
}

@riverpod
int cardTotal(ref) {
  final cardProducts = ref.watch(cartNotifierProvider).value;

  int total = 0;

  for (Product product in cardProducts) {
    total += product.price;
  }

  return total;
}
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:riverpod_example/models/product.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';

// part 'cart_provider.g.dart';

// class CartNotifier extends StateNotifier<List<Product>> {
//   CartNotifier() : super([]) {
//     _loadCartFromPrefs();
//   }

//   void _loadCartFromPrefs() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? cartData = prefs.getString('cart_products');
//     if (cartData != null) {
//       List<Product> products = (json.decode(cartData) as List).map((item) => Product.fromJson(item)).toList();
//       state = products;
//     }
//   }

//   void _saveCartToPrefs() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String cartData = json.encode(state.map((product) => product.toJson()).toList());
//     await prefs.setString('cart_products', cartData);
//   }

//   void addProduct(Product product) {
//     state = [...state, product];
//     _saveCartToPrefs();
//   }

//   void removeProduct(Product product) {
//     state = state.where((item) => item != product).toList();
//     _saveCartToPrefs();
//   }
// }

// final cartNotifierProvider = StateNotifierProvider<CartNotifier, List<Product>>((ref) {
//   return CartNotifier();
// });

// @riverpod
// int cardTotal(ref) {
//   final cardProducts = ref.watch(cartNotifierProvider);

//   int total = 0;

//   for (Product product in cardProducts) {
//     total += product.price;
//   }

//   return total;
// }
