import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/models/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Set<Product> build() {
    return {};
  }

  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
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
