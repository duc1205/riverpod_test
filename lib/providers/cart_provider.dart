import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/models/product.dart';
import 'package:riverpod_example/shared_preferences.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Future<List<Product>> build() async {
    final newListProduct = await SharedPreferencesHelper.getProducts();
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
