import 'package:homescreen_slash_app/features/homescreen/data/data_sources/categories_api_service_remote.dart';
import 'package:homescreen_slash_app/features/homescreen/data/models/category_model.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/categories_repository.dart';

import '../../../../core/di/di.dart';
import '../../../../core/resources/data_state.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  late final CategoriesApiServiceRemote _categoriesApiServiceRemote;

  CategoriesRepositoryImpl({CategoriesApiServiceRemote? productsApiServiceRemote}) {
    this._categoriesApiServiceRemote =
        productsApiServiceRemote ?? getIt.get<CategoriesApiServiceRemote>();
  }

  @override
  Future<DataState<List<CategoryModel>>> getCategories() async {
    final response = await _categoriesApiServiceRemote.getCategories();

    if (response == null) {
      return DataFailed("failed to load data");
    }

    return DataSuccess(response);
  }
}
