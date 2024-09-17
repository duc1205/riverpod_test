import 'package:riverpod_example/models/product.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPreferencesHelper {
  static Future<void> saveProducts(List<Product> products) async {
    final prefs = await SharedPreferences.getInstance();
    List<Product> existingProducts = await getProducts();

    for (var product in products) {
      if (!existingProducts.any((p) => p.id == product.id)) {
        existingProducts.add(product);
      }
    }

    final jsonString = json.encode(existingProducts.map((e) => e.toJson()).toList());
    await prefs.setString('products', jsonString);
  }

  static Future<List<Product>> getProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('products');
    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);
      return jsonList.map((e) => Product.fromJson(e as Map<String, dynamic>)).toList();
    }
    return [];
  }
}
