import 'package:homescreen_slash_app/core/di/di.dart';
import 'package:homescreen_slash_app/core/resources/data_state.dart';
import 'package:homescreen_slash_app/core/usecases/usecase.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/category_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/offer_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/categories_repository.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/repositories/offers_repository.dart';

class GetOffersUseCase implements UseCase<DataState<List<OfferEntity>>, void>{
  late final OffersRepository _offersRepository;


  GetOffersUseCase({OffersRepository? offersRepository}){
    this._offersRepository = offersRepository ?? getIt<OffersRepository>();
  }

  @override
  Future<DataState<List<OfferEntity>>> call({void params}) {
    return _offersRepository.getOffers();
  }

}