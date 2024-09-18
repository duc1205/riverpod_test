// import 'package:riverpod_example/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/models/products.dart';

part 'products_provider.g.dart';

List<Products> allProducts = [
  Products(
    id: '1',
    title: 'Groovy Shorts',
    price: 12,
    image: 'assets/images/shorts.png',
  ),
  Products(
    id: '2',
    title: 'Karati Kit',
    price: 34,
    image: 'assets/images/karati.png',
  ),
  Products(
    id: '3',
    title: 'Denim Jeans',
    price: 54,
    image: 'assets/images/jeans.png',
  ),
  Products(
    id: '4',
    title: 'Red Backpack',
    price: 14,
    image: 'assets/images/backpack.png',
  ),
  Products(
    id: '5',
    title: 'Drum & Sticks',
    price: 29,
    image: 'assets/images/drum.png',
  ),
  Products(
    id: '6',
    title: 'Blue Suitcase',
    price: 44,
    image: 'assets/images/suitcase.png',
  ),
  Products(
    id: '7',
    title: 'Roller Skates',
    price: 52,
    image: 'assets/images/skates.png',
  ),
  Products(
    id: '8',
    title: 'Electric Guitar',
    price: 79,
    image: 'assets/images/guitar.png',
  ),
];

@riverpod
List<Products> products(ref) {
  return allProducts;
}

@riverpod
List<Products> reduceProducts(ref) {
  return allProducts.where((p) => p.price < 50).toList();
}
