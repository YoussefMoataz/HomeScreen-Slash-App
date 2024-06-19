import '../../models/products_list_model.dart';

abstract class ProductsApiServiceRemote {
  Future<ProductsListModel?> getProducts();
}