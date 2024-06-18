import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int? id;
  final String? name;
  final double? price;
  final String? imageUrl;

  const ProductEntity({this.id, this.name, this.price, this.imageUrl});

  @override
  List<Object?> get props => [id, name, price, imageUrl];
}
