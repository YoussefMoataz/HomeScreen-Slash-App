import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:homescreen_slash_app/core/di/di.dart';
import 'package:homescreen_slash_app/core/resources/data_state.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/products_list_entity.dart';

import '../../../domain/usecases/get_products_usecase.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  late final GetProductsUseCase _getProductsUseCase;

  ProductsCubit({GetProductsUseCase? getProductsUseCase})
      : super(const ProductsInitial()) {
    this._getProductsUseCase =
        getProductsUseCase ?? getIt.get<GetProductsUseCase>();
    loadProducts();
  }

  Future<void> loadProducts() async {
    final dataState = await _getProductsUseCase();

    if (dataState is DataSuccess) {
      emit(ProductsDone(dataState.data!));
    } else if (dataState is DataFailed) {
      emit(ProductsError(dataState.error!));
    }
  }
}
