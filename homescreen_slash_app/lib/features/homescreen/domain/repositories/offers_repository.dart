import 'package:homescreen_slash_app/features/homescreen/domain/entities/offer_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class OffersRepository {
  Future<DataState<List<OfferEntity>>> getOffers();
}
