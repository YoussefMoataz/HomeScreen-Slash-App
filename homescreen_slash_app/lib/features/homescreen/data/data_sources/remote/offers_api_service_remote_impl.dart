import 'package:homescreen_slash_app/features/homescreen/data/data_sources/offers_api_service_remote.dart';
import 'package:homescreen_slash_app/features/homescreen/data/models/offer_model.dart';

class OffersApiServiceRemoteImpl implements OffersApiServiceRemote {
  @override
  Future<List<OfferModel>?> getOffers() async {
    List<OfferModel> categories = List.of([
      OfferModel(id: 0, imageUrl: "assets/images/best_seller_1.png"),
      OfferModel(id: 1, imageUrl: "assets/images/best_seller_1.png"),
      OfferModel(id: 2, imageUrl: "assets/images/best_seller_1.png"),
      OfferModel(id: 3, imageUrl: "assets/images/best_seller_1.png"),
      OfferModel(id: 4, imageUrl: "assets/images/best_seller_1.png"),
    ]);
    return categories;
  }
}
