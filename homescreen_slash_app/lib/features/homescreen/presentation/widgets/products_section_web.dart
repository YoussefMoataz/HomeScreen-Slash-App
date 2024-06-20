import 'package:flutter/cupertino.dart';
import 'package:homescreen_slash_app/config/theme/dimensions.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/product_entity.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/product_section_item_web.dart';
import 'package:homescreen_slash_app/features/homescreen/presentation/widgets/section_header.dart';

class ProductsSectionWeb extends StatelessWidget {
  final String sectionName;
  final List<ProductEntity> products;
  final VoidCallback onSeeAllClicked;

  const ProductsSectionWeb(
      {super.key,
      required this.sectionName,
      required this.products,
      required this.onSeeAllClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.7),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding - defaultListItemPadding),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductSectionItemWeb(
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
