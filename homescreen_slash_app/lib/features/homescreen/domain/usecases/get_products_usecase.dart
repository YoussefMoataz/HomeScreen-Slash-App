import 'package:homescreen_slash_app/core/di/di.dart';
import 'package:homescreen_slash_app/core/resources/data_state.dart';
import 'package:homescreen_slash_app/core/usecases/usecase.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/products_list_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/products_repository.dart';

class GetProductsUseCase
    implements UseCase<DataState<ProductsListEntity>, void> {
  late final ProductsRepository _productsRepository;

  GetProductsUseCase({ProductsRepository? productsRepository}) {
    this._productsRepository =
        productsRepository ?? getIt.get<ProductsRepository>();
  }

  @override
  Future<DataState<ProductsListEntity>> call({void params}) async {
    return await _productsRepository.getProducts();
  }
}
