import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/pages/products_page_mobile.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/pages/products_page_web.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const ProductsPageMobile();
        } else {
          return const ProductsPageWeb();
        }
      },
    );
  }
}
