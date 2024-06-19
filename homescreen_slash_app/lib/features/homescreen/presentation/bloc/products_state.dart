part of 'products_cubit.dart';

sealed class ProductsState extends Equatable {
  final ProductsListEntity? productsListEntity;
  final String? error;

  const ProductsState({this.productsListEntity, this.error});

  @override
  List<Object> get props => [productsListEntity!, error!];
}

final class ProductsInitial extends ProductsState {
  const ProductsInitial();
}

final class ProductsDone extends ProductsState {
  const ProductsDone(ProductsListEntity productsListEntity)
      : super(productsListEntity: productsListEntity);
}

final class ProductsError extends ProductsState {
  const ProductsError(String error) : super(error: error);
}
