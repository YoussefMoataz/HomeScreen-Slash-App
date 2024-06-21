import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/product_section_item.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/section_header.dart';

import '../../../../config/theme/dimensions.dart';
import '../../../../core/utils/display_types.dart';
import '../../domain/entities/product_entity.dart';

class ProductSection extends StatelessWidget {
  final DisplayTypes displayType;
  final String sectionName;
  final List<ProductEntity> products;
  final VoidCallback onSeeAllClicked;

  const ProductSection(
      {super.key,
      required this.displayType,
      required this.sectionName,
      required this.products,
      required this.onSeeAllClicked});

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
      height: 320,
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
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductSectionItem(
                  displayType: displayType,
                  product: products[index],
                  onProductClicked: () {
                    print(
                        "Section: $sectionName - Product index $index clicked");
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWebLayout() {
    return SizedBox(
      // color: Colors.grey,
      // height: 520,
      width: 300,
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
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2, childAspectRatio: 0.8),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300, childAspectRatio: 0.7),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding - defaultListItemPadding),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductSectionItem(
                  displayType: displayType,
                  product: products[index],
                  onProductClicked: () {
                    print(
                        "Section: $sectionName - Product index $index clicked");
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
