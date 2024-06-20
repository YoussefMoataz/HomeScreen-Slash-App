import 'package:homescreen_slash_app/features/homescreen/domain/entities/category_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class CategoriesRepository {
  Future<DataState<List<CategoryEntity>>> getCategories();
}
