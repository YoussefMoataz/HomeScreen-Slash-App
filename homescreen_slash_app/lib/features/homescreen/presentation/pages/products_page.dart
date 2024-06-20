import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/products_cubit.dart';
import '../views/products_section.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<ProductsCubit, ProductsState>(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
