import 'package:homescreen_slash_app/features/homescreen/domain/entities/offer_entity.dart';

class OfferModel extends OfferEntity {
  const OfferModel({int? id, String? imageUrl})
      : super(
          id: id,
          imageUrl: imageUrl,
        );

  factory OfferModel.fromJson(Map<String, dynamic> map) {
    return OfferModel(
      id: map["id"] ?? -1,
      imageUrl: map["image"] ?? "",
    );
  }
}
