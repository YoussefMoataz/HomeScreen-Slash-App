import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/core/utils/display_types.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/categories_view.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/products_view.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../views/offers_view.dart';
import '../widgets/search_box.dart';
import '../widgets/top_bar.dart';

class ProductsPageMobile extends StatefulWidget {
  const ProductsPageMobile({super.key});

  @override
  State<ProductsPageMobile> createState() => _ProductsPageMobileState();
}

class _ProductsPageMobileState extends State<ProductsPageMobile> {
  final PersistentTabController _controller = PersistentTabController();

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      onTabChanged: (value) {
        setState(() {
          _controller.jumpToTab(value);
        });
      },
      navBarHeight: 70,
      tabs: [
        _buildNavigationBarItem(
          index: 0,
          title: "Home",
          iconData: Icons.home_outlined,
          iconDataSelected: Icons.home,
          screen: _buildHomePage(),
        ),
        _buildNavigationBarItem(
          index: 1,
          title: "Favourites",
          iconData: CupertinoIcons.heart,
          iconDataSelected: CupertinoIcons.heart_fill,
          screen: const Center(child: Text("Favourites screen")),
        ),
        _buildNavigationBarItem(
          index: 2,
          title: "My Cart",
          iconData: Icons.shopping_cart_outlined,
          iconDataSelected: Icons.shopping_cart_rounded,
          screen: const Center(child: Text("My Cart screen")),
        ),
        _buildNavigationBarItem(
          index: 3,
          title: "Profile",
          iconData: CupertinoIcons.person,
          iconDataSelected: CupertinoIcons.person_alt,
          screen: const Center(child: Text("Profile screen")),
        ),
      ],
      navBarBuilder: (navBarConfig) =>
          Style4BottomNavBar(navBarConfig: navBarConfig),
    );
  }

  PersistentTabConfig _buildNavigationBarItem(
      {required int index,
      required String title,
      required IconData iconData,
      required IconData iconDataSelected,
      required Widget screen}) {
    return PersistentTabConfig(
      item: ItemConfig(
        activeForegroundColor: Colors.black,
        title: title,
        icon: Icon(index == _controller.index ? iconDataSelected : iconData),
      ),
      screen: screen,
    );
  }

  Widget _buildHomePage() {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            SearchBox(),
            OffersView(),
            CategoriesView(displayType: DisplayTypes.mobile),
            ProductsView(displayType: DisplayTypes.mobile),
          ],
        ),
      ),
    );
  }
}
