import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/core/utils/display_types.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/section_header.dart';

import '../../../../config/theme/dimensions.dart';
import '../../domain/entities/category_entity.dart';
import 'category_section_item.dart';

class CategoriesSection extends StatelessWidget {
  final DisplayTypes displayType;
  final String sectionName;
  final List<CategoryEntity> categories;
  final VoidCallback onSeeAllClicked;

  CategoriesSection({
    super.key,
    required this.displayType,
    required this.sectionName,
    required this.categories,
    required this.onSeeAllClicked,
  });

  @override
  Widget build(BuildContext context) {
    if (displayType == DisplayTypes.mobile) {
      return _buildMobileLayout();
    } else {
      return _buildWebLayout();
    }
  }

  Widget _buildMobileLayout() {
    return SizedBox(
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
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
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

  Widget _buildWebLayout() {
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
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 0.9),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 1.15,
              ),
              padding: const EdgeInsets.symmetric(
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
