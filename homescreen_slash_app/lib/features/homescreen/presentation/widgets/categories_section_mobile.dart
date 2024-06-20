import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/category_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/section_header.dart';

import '../../../../config/theme/dimensions.dart';
import 'category_section_item.dart';

class CategoriesSectionMobile extends StatelessWidget {
  final String sectionName;
  late final List<CategoryEntity> categories;
  final VoidCallback onSeeAllClicked;

  CategoriesSectionMobile(
      {super.key,
      required this.sectionName,
      required this.categories,
      required this.onSeeAllClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      height: 180,
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
            child: ListView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding - defaultListItemPadding),
              scrollDirection: Axis.horizontal,
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
