import 'package:homescreen_slash_app/features/homescreen/data/data_sources/categories_api_service_remote.dart';
import 'package:homescreen_slash_app/features/homescreen/data/models/category_model.dart';

class CategoriesApiServiceRemoteImpl implements CategoriesApiServiceRemote {
  @override
  Future<List<CategoryModel>?> getCategories() async {
    List<CategoryModel> categories = List.of([
      CategoryModel(
          id: 0, name: "Fashion", imageUrl: "assets/images/best_seller_1.png"),
      CategoryModel(
          id: 1, name: "Games", imageUrl: "assets/images/best_seller_1.png"),
      CategoryModel(
          id: 2,
          name: "Accessories",
          imageUrl: "assets/images/best_seller_1.png"),
      CategoryModel(
          id: 3, name: "Books", imageUrl: "assets/images/best_seller_1.png"),
      CategoryModel(
          id: 4, name: "Artistic", imageUrl: "assets/images/best_seller_1.png"),
    ]);
    return categories;
  }
}
