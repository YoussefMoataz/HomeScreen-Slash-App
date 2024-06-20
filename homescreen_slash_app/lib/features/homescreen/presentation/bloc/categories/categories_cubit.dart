import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:homescreen_slash_app/core/di/di.dart';
import 'package:homescreen_slash_app/core/resources/data_state.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/category_entity.dart';

import '../../../domain/usecases/get_categories_usecase.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  late final GetCategoriesUseCase _getCategoriesUseCase;

  CategoriesCubit({GetCategoriesUseCase? getCategoriesUseCase})
      : super(const CategoriesInitial()) {
    this._getCategoriesUseCase =
        getCategoriesUseCase ?? getIt.get<GetCategoriesUseCase>();
    loadCategories();
  }

  Future<void> loadCategories() async {
    final dataState = await _getCategoriesUseCase();

    if (dataState is DataSuccess) {
      emit(CategoriesDone(dataState.data!));
    } else if (dataState is DataFailed) {
      emit(CategoriesError(dataState.error!));
    }
  }
}
