import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:homescreen_slash_app/core/di/di.dart';
import 'package:homescreen_slash_app/core/resources/data_state.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/offer_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/usecases/get_offers_usecase.dart';

part 'offers_state.dart';

class OffersCubit extends Cubit<OffersState> {
  late final GetOffersUseCase _getOffersUseCase;

  OffersCubit({GetOffersUseCase? getOffersUseCase})
      : super(const OffersInitial()) {
    this._getOffersUseCase = getOffersUseCase ?? getIt.get<GetOffersUseCase>();
    loadOffers();
  }

  Future<void> loadOffers() async {
    final dataState = await _getOffersUseCase();

    if (dataState is DataSuccess) {
      emit(OffersDone(dataState.data!));
    } else if (dataState is DataFailed) {
      emit(OffersError(dataState.error!));
    }
  }
}
