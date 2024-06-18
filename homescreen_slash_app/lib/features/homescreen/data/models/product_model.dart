import 'package:homescreen_slash_app/features/homescreen/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel({int? id, String? name, double? price, String? imageUrl})
      : super(
          id: id,
          name: name,
          price: price,
          imageUrl: imageUrl,
        );

  factory ProductModel.fromJson(Map<String, dynamic> map) {
    return ProductModel(
      id: map["id"] ?? -1,
      name: map["name"] ?? "",
      price: map["price"] ?? 0.0,
      imageUrl: map["image"] ?? "",
    );
  }
}
