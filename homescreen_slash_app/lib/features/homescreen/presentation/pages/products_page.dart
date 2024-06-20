import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/categories_view.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/products_view.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/top_bar.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarHeight: 70,
      tabs: [
        _buildNavigationBarItem(
          title: "Home",
          iconData: CupertinoIcons.home,
          screen: const SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TopBar(),
                  CategoriesView(),
                  ProductsView(),
                ],
              ),
            ),
          ),
        ),
        _buildNavigationBarItem(
          title: "Favourites",
          iconData: CupertinoIcons.heart,
          screen: Center(child: Text("Favourites screen")),
        ),
        _buildNavigationBarItem(
          title: "My Cart",
          iconData: CupertinoIcons.shopping_cart,
          screen: Center(child: Text("My Cart screen")),
        ),
        _buildNavigationBarItem(
          title: "Profile",
          iconData: CupertinoIcons.person,
          screen: Center(child: Text("Profile screen")),
        ),
      ],
      navBarBuilder: (navBarConfig) =>
          Style4BottomNavBar(navBarConfig: navBarConfig),
    );
  }

  PersistentTabConfig _buildNavigationBarItem(
      {required String title,
      required IconData iconData,
      required Widget screen}) {
    return PersistentTabConfig(
      item: ItemConfig(
        activeForegroundColor: Colors.black,
        title: title,
        icon: Icon(iconData),
      ),
      screen: screen,
    );
  }
}
