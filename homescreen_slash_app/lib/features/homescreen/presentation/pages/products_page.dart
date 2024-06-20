import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/bloc/categories/categories_cubit.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/categories_view.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/products_view.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/categories_section.dart';

import '../bloc/products/products_cubit.dart';
import '../widgets/products_section.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CategoriesView(),
              ProductsView(),
            ],
          ),
        ),
      ),
    );
  }
}
