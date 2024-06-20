import 'package:homescreen_slash_app/core/di/di.dart';
import 'package:homescreen_slash_app/core/resources/data_state.dart';
import 'package:homescreen_slash_app/core/usecases/usecase.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/category_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/categories_repository.dart';

class GetCategoriesUseCase
    implements UseCase<DataState<List<CategoryEntity>>, void> {
  late final CategoriesRepository _categoriesRepository;

  GetCategoriesUseCase({CategoriesRepository? categoriesRepository}) {
    this._categoriesRepository =
        categoriesRepository ?? getIt<CategoriesRepository>();
  }

  @override
  Future<DataState<List<CategoryEntity>>> call({void params}) {
    return _categoriesRepository.getCategories();
  }
}
