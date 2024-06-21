import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/categories_section.dart';

import '../../../../core/utils/display_types.dart';
import '../bloc/categories/categories_cubit.dart';

class CategoriesView extends StatelessWidget {
  final DisplayTypes displayType;

  const CategoriesView({
    super.key,
    required this.displayType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesDone) {
          return CategoriesSection(
            displayType: displayType,
            sectionName: "Categories",
            categories: state.categories!,
            onSeeAllClicked: () {
              print("Categories: see all clicked");
            },
          );
        } else if (state is CategoriesDone) {
          return const Text("Failed to load data");
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
