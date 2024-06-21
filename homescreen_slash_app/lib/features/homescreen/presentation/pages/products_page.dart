import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/config/theme/dimensions.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/pages/products_page_mobile.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/pages/products_page_web.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidthBreakPoint) {
          return const ProductsPageMobile();
        } else {
          return const ProductsPageWeb();
        }
      },
    );
  }
}
