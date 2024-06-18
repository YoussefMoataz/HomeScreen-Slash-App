import 'package:homescreen_slash_app/core/resources/data_state.dart';
import 'package:homescreen_slash_app/features/homescreen/data/data_sources/remote/products_api_service.dart';
import 'package:homescreen_slash_app/features/homescreen/data/models/products_list_model.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsApiService _productsApiService;

  ProductsRepositoryImpl(this._productsApiService);

  @override
  Future<DataState<ProductsListModel>> getProducts() async {
    final response = await _productsApiService.getProducts();

    if (response == null) {
      return DataFailed("failed to load data");
    }

    return DataSuccess(response);
  }
}
