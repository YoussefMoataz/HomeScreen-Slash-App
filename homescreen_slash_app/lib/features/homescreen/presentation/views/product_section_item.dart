import 'package:flutter/cupertino.dart';
import 'package:homescreen_slash_app/config/theme/text_styles.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/product_entity.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/dimensions.dart';

class ProductSectionItem extends StatelessWidget {
  final ProductEntity product;

  const ProductSectionItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sectionProductItemWidth,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  // Image.asset(product.imageUrl!),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/images/best_seller_1.png",
                      width: sectionProductItemWidth,
                      height: sectionProductItemWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: sectionSeeAllIconColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print("add to cart clicked");
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            CupertinoIcons.heart,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              product.name!,
              style: sectionProductNameTextStyle,
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    child: Text(
                      "EGP ${product.price!}",
                      style: sectionProductPriceTextStyle,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: addToCartIconBackgroundColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print("add to cart clicked");
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            color: addToCartIconColor,
                            CupertinoIcons.add,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: sectionSeeAllIconColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print("seller clicked");
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            CupertinoIcons.money_dollar,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
