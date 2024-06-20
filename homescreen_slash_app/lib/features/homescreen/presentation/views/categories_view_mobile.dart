import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/categories/categories_cubit.dart';
import '../widgets/categories_section_mobile.dart';

class CategoriesViewMobile extends StatelessWidget {
  const CategoriesViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesDone) {
          return CategoriesSectionMobile(
            sectionName: "Categories",
            categories: state.categories!,
            onSeeAllClicked: () {
              print("Categories: see all clicked");
            },
          );
        } else if (state is CategoriesDone) {
          return Text("Failed to load data");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
