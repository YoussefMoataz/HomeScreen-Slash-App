import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/categories_view.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/offers_view.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/products_view_web.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/search_box.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/top_bar.dart';

class ProductsPageWeb extends StatelessWidget {
  const ProductsPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                  icon: Icon(Icons.home_outlined), label: Text("Home")),
              NavigationRailDestination(
                  icon: Icon(CupertinoIcons.heart), label: Text("Favourites")),
              NavigationRailDestination(
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: Text("My Cart")),
              NavigationRailDestination(
                  icon: Icon(CupertinoIcons.person), label: Text("Profile")),
            ],
            selectedIndex: 0,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(flex: 2, child: TopBar()),
                    Expanded(flex: 1, child: SearchBox()),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: ProductsViewWeb(),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OffersView(),
                            CategoriesView(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
