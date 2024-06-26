import 'package:flutter/cupertino.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/dimensions.dart';
import '../../../../config/theme/text_styles.dart';
import '../../../../core/utils/display_types.dart';
import '../../domain/entities/product_entity.dart';

class ProductSectionItem extends StatelessWidget {
  final DisplayTypes displayType;
  final ProductEntity product;
  final VoidCallback onProductClicked;

  const ProductSectionItem(
      {super.key,
      required this.displayType,
      required this.product,
      required this.onProductClicked});

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
      width: sectionProductItemWidthMobile,
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
                    child: GestureDetector(
                      onTap: onProductClicked,
                      child: Image.asset(
                        product.imageUrl!,
                        width: sectionProductItemWidthMobile,
                        height: sectionProductItemWidthMobile,
                        fit: BoxFit.cover,
                      ),
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
                          print("favourite clicked");
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
            const SizedBox(height: 10),
            Text(
              product.name!,
              style: sectionProductNameTextStyleMobile,
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    child: Text(
                      "EGP ${product.price!}",
                      style: sectionProductPriceTextStyleMobile,
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

  Widget _buildWebLayout() {
    return SizedBox(
      width: sectionProductItemWidthWeb,
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
                    child: GestureDetector(
                      onTap: onProductClicked,
                      child: Image.asset(
                        product.imageUrl!,
                        width: sectionProductItemWidthWeb,
                        height: sectionProductItemWidthWeb,
                        fit: BoxFit.cover,
                      ),
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
                          print("favourite clicked");
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
            const SizedBox(height: 10),
            Text(
              product.name!,
              style: sectionProductNameTextStyleWeb,
              overflow: TextOverflow.ellipsis,
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    child: Text(
                      "EGP ${product.price!}",
                      style: sectionProductPriceTextStyleMobile,
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
