part of 'offers_cubit.dart';

sealed class OffersState extends Equatable {
  final List<OfferEntity>? offers;
  final String? error;

  const OffersState({this.offers, this.error});

  @override
  List<Object> get props => [offers!, error!];
}

final class OffersInitial extends OffersState {
  const OffersInitial();
}

final class OffersDone extends OffersState {
  const OffersDone(List<OfferEntity> offers) : super(offers: offers);
}

final class OffersError extends OffersState {
  const OffersError(String error) : super(error: error);
}
