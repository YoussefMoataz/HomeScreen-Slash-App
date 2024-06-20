import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int? id;
  final String? name;
  final String? imageUrl;

  const CategoryEntity({this.id, this.name, this.imageUrl});

  @override
  List<Object?> get props => [id, name, imageUrl];
}
