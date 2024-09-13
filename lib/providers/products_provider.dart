import 'package:riverpod_example/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_provider.g.dart';

const List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Groovy Shorts',
    price: 12,
    image: 'assets/images/shorts.png',
  ),
  Product(
    id: '2',
    title: 'Karati Kit',
    price: 34,
    image: 'assets/images/karati.png',
  ),
  Product(
    id: '3',
    title: 'Denim Jeans',
    price: 54,
    image: 'assets/images/jeans.png',
  ),
  Product(
    id: '4',
    title: 'Red Backpack',
    price: 14,
    image: 'assets/images/backpack.png',
  ),
  Product(
    id: '5',
    title: 'Drum & Sticks',
    price: 29,
    image: 'assets/images/drum.png',
  ),
  Product(
    id: '6',
    title: 'Blue Suitcase',
    price: 44,
    image: 'assets/images/suitcase.png',
  ),
  Product(
    id: '7',
    title: 'Roller Skates',
    price: 52,
    image: 'assets/images/skates.png',
  ),
  Product(
    id: '8',
    title: 'Electric Guitar',
    price: 79,
    image: 'assets/images/guitar.png',
  ),
];

@riverpod
List<Product> products(ref) {
  return allProducts;
}

@riverpod
List<Product> reduceProducts(ref) {
  return allProducts.where((p) => p.price < 50).toList();
}
