// import 'package:riverpod_example/models/product.dart';
import 'package:riverpod_example/models/products.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPreferencesHelper {
  static Future<void> saveProducts(List<Products> products) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = json.encode(products.map((e) => e.toJson()).toList());
    await prefs.setString('products', jsonString);
  }

  static Future<List<Products>> getProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('products');
    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);
      return jsonList.map((e) => Products.fromJson(e as Map<String, dynamic>)).toList();
    }
    return [];
  }
}
