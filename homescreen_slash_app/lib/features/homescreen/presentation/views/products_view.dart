import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/products/products_cubit.dart';
import '../widgets/products_section.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsDone) {
          return Column(
            children: [
              ProductsSection(
                sectionName: "Best Selling",
                products: state.productsListEntity!.bestSelling!,
                onSeeAllClicked: () {
                  print("Best Selling: see all clicked");
                },
              ),
              ProductsSection(
                sectionName: "New Arrival",
                products: state.productsListEntity!.newArrival!,
                onSeeAllClicked: () {
                  print("New Arrival: see all clicked");
                },
              ),
              ProductsSection(
                sectionName: "Recommended For You",
                products: state.productsListEntity!.recommendedForYou!,
                onSeeAllClicked: () {
                  print("Recommended For You: see all clicked");
                },
              ),
            ],
          );
        } else if (state is ProductsError) {
          return Text("Failed to load data");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
