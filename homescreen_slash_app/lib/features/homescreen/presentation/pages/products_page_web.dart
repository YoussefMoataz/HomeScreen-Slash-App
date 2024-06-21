import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/config/theme/colors.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/categories_view_web.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/offers_view.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/products_view_web.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/search_box.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/top_bar.dart';

class ProductsPageWeb extends StatefulWidget {
  const ProductsPageWeb({super.key});

  @override
  State<ProductsPageWeb> createState() => _ProductsPageWebState();
}

class _ProductsPageWebState extends State<ProductsPageWeb> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            indicatorColor: sectionSeeAllIconColor,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: Text("Home"),
              ),
              NavigationRailDestination(
                icon: Icon(CupertinoIcons.heart),
                selectedIcon: Icon(CupertinoIcons.heart_fill),
                label: Text("Favourites"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                selectedIcon: Icon(Icons.shopping_cart),
                label: Text("My Cart"),
              ),
              NavigationRailDestination(
                icon: Icon(CupertinoIcons.person),
                selectedIcon: Icon(CupertinoIcons.person_alt),
                label: Text("Profile"),
              ),
            ],
          ),
          _buildCurrentScreen(_selectedIndex),
        ],
      ),
    );
  }

  Widget _buildCurrentScreen(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: TopBar()),
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SearchBox(),
                          OffersView(),
                          CategoriesViewWeb(),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: ProductsViewWeb(),
                        )),
                  ],
                ),
              )
            ],
          ),
        );
      case 1:
        return const Expanded(child: Center(child: Text("Favourites screen")));
      case 2:
        return const Expanded(child: Center(child: Text("My Cart screen")));
      case 3:
        return const Expanded(child: Center(child: Text("Profile screen")));
      default:
        return const Expanded(child: Text("Slash. app"));
    }
  }
}
