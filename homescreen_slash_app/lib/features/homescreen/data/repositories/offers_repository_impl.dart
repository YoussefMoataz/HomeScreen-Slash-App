import 'package:homescreen_slash_app/features/homescreen/data/data_sources/categories_api_service_remote.dart';
import 'package:homescreen_slash_app/features/homescreen/data/data_sources/offers_api_service_remote.dart';
import 'package:homescreen_slash_app/features/homescreen/data/models/category_model.dart';
import 'package:homescreen_slash_app/features/homescreen/data/models/offer_model.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/categories_repository.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/offers_repository.dart';

import '../../../../core/di/di.dart';
import '../../../../core/resources/data_state.dart';

class OffersRepositoryImpl implements OffersRepository {
  late final OffersApiServiceRemote _offersApiServiceRemote;

  OffersRepositoryImpl({OffersApiServiceRemote? offersApiServiceRemote}) {
    this._offersApiServiceRemote =
        offersApiServiceRemote ?? getIt.get<OffersApiServiceRemote>();
  }

  @override
  Future<DataState<List<OfferModel>>> getOffers() async {
    final response = await _offersApiServiceRemote.getOffers();

    if (response == null) {
      return DataFailed("failed to load data");
    }

    return DataSuccess(response);
  }
}
