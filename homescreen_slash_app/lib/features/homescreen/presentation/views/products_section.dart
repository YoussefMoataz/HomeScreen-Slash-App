import 'package:flutter/cupertino.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/product_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/product_section_item.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/section_header.dart';

class ProductsSection extends StatelessWidget {
  final String sectionName;
  final List<ProductEntity> products;
  final VoidCallback onSeeAllClicked;

  const ProductsSection(
      {super.key,
      required this.sectionName,
      required this.products,
      required this.onSeeAllClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductSectionItem(
                  product: products[index],
                  onProductClicked: () {
                    print("Section: $sectionName - Product index $index clicked");
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
