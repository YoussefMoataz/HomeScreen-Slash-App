import 'package:flutter/cupertino.dart';
import 'package:homescreen_slash_app/config/theme/text_styles.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/product_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/product_section_item.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/views/products_section_see_all.dart';

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
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    sectionName,
                    style: sectionNameTextStyle,
                  ),
                ),
                Positioned(
                  top: 14,
                  right: 10,
                  child: ProductsSectionSeeAll(
                    onSeeAllClicked: onSeeAllClicked,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductSectionItem(product: products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
