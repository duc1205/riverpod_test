import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  const Product({required this.id, required this.title, required this.price, required this.image});

  final String id;
  final String title;
  final int price;
  final String image;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  // Override == để so sánh các sản phẩm dựa trên title, image, và price
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product && other.title == title && other.image == image && other.price == price;
  }

  // Cần override hashCode khi override ==
  @override
  int get hashCode => title.hashCode ^ image.hashCode ^ price.hashCode;
}
