import 'package:homescreen_slash_app/core/di/di.dart';
import 'package:homescreen_slash_app/core/resources/data_state.dart';
import 'package:homescreen_slash_app/features/homescreen/data/models/products_list_model.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/products_repository.dart';

import '../data_sources/products_api_service_remote.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  late final ProductsApiServiceRemote _productsApiServiceRemote;

  ProductsRepositoryImpl({ProductsApiServiceRemote? productsApiServiceRemote}) {
    this._productsApiServiceRemote =
        productsApiServiceRemote ?? getIt.get<ProductsApiServiceRemote>();
  }

  @override
  Future<DataState<ProductsListModel>> getProducts() async {
    final response = await _productsApiServiceRemote.getProducts();

    if (response == null) {
      return DataFailed("failed to load data");
    }

    return DataSuccess(response);
  }
}
