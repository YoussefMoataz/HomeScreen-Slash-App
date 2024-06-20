import 'package:homescreen_slash_app/features/homescreen/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  const CategoryModel({int? id, String? name, String? imageUrl})
      : super(
          id: id,
          name: name,
          imageUrl: imageUrl,
        );

  factory CategoryModel.fromJson(Map<String, dynamic> map) {
    return CategoryModel(
      id: map["id"] ?? -1,
      name: map["name"] ?? "",
      imageUrl: map["image"] ?? "",
    );
  }
}
