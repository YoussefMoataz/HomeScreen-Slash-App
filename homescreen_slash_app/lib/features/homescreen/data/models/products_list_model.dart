import 'package:homescreen_slash_app/features/homescreen/data/models/product_model.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/product_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/products_list_entity.dart';

class ProductsListModel extends ProductsListEntity {
  const ProductsListModel({
    List<ProductEntity>? bestSelling,
    List<ProductEntity>? newArrival,
    List<ProductEntity>? recommendedForYou,
  }) : super(
          bestSelling: bestSelling,
          newArrival: newArrival,
          recommendedForYou: recommendedForYou,
        );

  factory ProductsListModel.fromJson(Map<String, dynamic> json) {
    var bestSellingFromJson = json['bestSelling'] as List;
    var newArrivalFromJson = json['newArrival'] as List;
    var recommendedForYouFromJson = json['recommendedForYou'] as List;

    List<ProductEntity> bestSellingList = bestSellingFromJson
        .map((productJson) => ProductModel.fromJson(productJson))
        .toList();
    List<ProductEntity> newArrivalList = newArrivalFromJson
        .map((productJson) => ProductModel.fromJson(productJson))
        .toList();
    List<ProductEntity> recommendedForYou = recommendedForYouFromJson
        .map((productJson) => ProductModel.fromJson(productJson))
        .toList();

    return ProductsListModel(
      bestSelling: bestSellingList,
      newArrival: newArrivalList,
      recommendedForYou: recommendedForYou,
    );
  }
}
