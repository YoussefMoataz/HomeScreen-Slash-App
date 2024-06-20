import 'package:homescreen_slash_app/features/homescreen/data/models/offer_model.dart';

abstract class OffersApiServiceRemote {
  Future<List<OfferModel>?> getOffers();
}
