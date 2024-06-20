import 'package:homescreen_slash_app/features/homescreen/data/models/category_model.dart';

import '../models/products_list_model.dart';

abstract class CategoriesApiServiceRemote {
  Future<List<CategoryModel>?> getCategories();
}
