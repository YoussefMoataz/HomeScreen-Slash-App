import 'package:equatable/equatable.dart';

class OfferEntity extends Equatable {
  final int? id;
  final String? imageUrl;

  const OfferEntity({this.id, this.imageUrl});

  @override
  List<Object?> get props => [id, imageUrl];
}
