import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/category_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/section_header.dart';

import '../../../../config/theme/dimensions.dart';
import 'category_section_item.dart';

class CategoriesSectionWeb extends StatelessWidget {
  final String sectionName;
  late final List<CategoryEntity> categories;
  final VoidCallback onSeeAllClicked;

  CategoriesSectionWeb(
      {super.key,
      required this.sectionName,
      required this.categories,
      required this.onSeeAllClicked});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: SectionHeader(
              sectionName: sectionName,
              onSeeAllClicked: onSeeAllClicked,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 0.9),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300, childAspectRatio: 1.15, ),
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding - defaultListItemPadding),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return CategorySectionItem(
                  category: categories[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
