import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/models/product.dart';
import 'package:riverpod_example/shared_preferences.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  List<Product> build() {
    List<Product> newListProduct = [];
    final query = SharedPreferencesHelper.getProducts();
    query.then((state) {
      for (var item in state) {
        if (!newListProduct.contains(item)) {
          newListProduct.add(item);
        }
      }
    });
    return newListProduct;
  }

  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = [...state, product];
      SharedPreferencesHelper.saveProducts(state);
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toList();
      SharedPreferencesHelper.saveProducts(state);
    }
  }
}

@riverpod
int cardTotal(ref) {
  final cardProducts = ref.watch(cartNotifierProvider);

  int total = 0;

  for (Product product in cardProducts) {
    total += product.price;
  }

  return total;
}
