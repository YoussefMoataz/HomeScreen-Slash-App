import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/display_types.dart';
import '../bloc/products/products_cubit.dart';
import '../widgets/product_section.dart';

class ProductsView extends StatelessWidget {
  final DisplayTypes displayType;

  const ProductsView({super.key, required this.displayType});

  @override
  Widget build(BuildContext context) {
    if (displayType == DisplayTypes.mobile) {
      return _buildMobileLayout();
    } else {
      return _buildWebLayout();
    }
  }

  Widget _buildMobileLayout() {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsDone) {
          return Column(
            children: [
              ProductSection(
                displayType: displayType,
                sectionName: "Best Selling",
                products: state.productsListEntity!.bestSelling!,
                onSeeAllClicked: () {
                  print("Best Selling: see all clicked");
                },
              ),
              ProductSection(
                displayType: displayType,
                sectionName: "New Arrival",
                products: state.productsListEntity!.newArrival!,
                onSeeAllClicked: () {
                  print("New Arrival: see all clicked");
                },
              ),
              ProductSection(
                displayType: displayType,
                sectionName: "Recommended For You",
                products: state.productsListEntity!.recommendedForYou!,
                onSeeAllClicked: () {
                  print("Recommended For You: see all clicked");
                },
              ),
            ],
          );
        } else if (state is ProductsError) {
          return const Text("Failed to load data");
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  Widget _buildWebLayout() {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsDone) {
          return Row(
            children: [
              Expanded(
                child: ProductSection(
                  displayType: displayType,
                  sectionName: "Best Selling",
                  products: state.productsListEntity!.bestSelling!,
                  onSeeAllClicked: () {
                    print("Best Selling: see all clicked");
                  },
                ),
              ),
              Expanded(
                child: ProductSection(
                  displayType: displayType,
                  sectionName: "New Arrival",
                  products: state.productsListEntity!.newArrival!,
                  onSeeAllClicked: () {
                    print("New Arrival: see all clicked");
                  },
                ),
              ),
              Expanded(
                child: ProductSection(
                  displayType: displayType,
                  sectionName: "Recommended For You",
                  products: state.productsListEntity!.recommendedForYou!,
                  onSeeAllClicked: () {
                    print("Recommended For You: see all clicked");
                  },
                ),
              ),
            ],
          );
        } else if (state is ProductsError) {
          return const Text("Failed to load data");
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
