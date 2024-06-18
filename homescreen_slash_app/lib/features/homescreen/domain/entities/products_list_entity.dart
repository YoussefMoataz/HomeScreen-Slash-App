import 'package:equatable/equatable.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/product_entity.dart';

class ProductsListEntity extends Equatable {
  final List<ProductEntity>? bestSelling;
  final List<ProductEntity>? newArrival;
  final List<ProductEntity>? recommendedForYou;

  const ProductsListEntity({
    this.bestSelling,
    this.newArrival,
    this.recommendedForYou,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [bestSelling, newArrival, recommendedForYou];
}
