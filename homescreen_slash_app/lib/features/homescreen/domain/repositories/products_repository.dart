import 'package:homescreen_slash_app/features/homescreen/domain/entities/products_list_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class ProductsRepository {
  Future<DataState<ProductsListEntity>> getProducts();
}
