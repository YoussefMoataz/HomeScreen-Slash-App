import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/bloc/offers/offers_cubit.dart';

import '../widgets/offers.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OffersCubit, OffersState>(
      builder: (context, state) {
        if (state is OffersDone) {
          return Offers(
            offers: state.offers!,
          );
        } else if (state is OffersError) {
          return Text("failed to load offers");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
