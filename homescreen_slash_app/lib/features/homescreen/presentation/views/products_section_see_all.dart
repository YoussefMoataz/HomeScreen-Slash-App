import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/text_styles.dart';

class ProductsSectionSeeAll extends StatelessWidget {
  final VoidCallback onSeeAllClicked;

  const ProductsSectionSeeAll({super.key, required this.onSeeAllClicked});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "See all",
          style: sectionSeeAllTextStyle,
        ),
        const SizedBox(
          width: 6,
        ),
        Container(
          decoration: BoxDecoration(
            color: sectionSeeAllIconColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: GestureDetector(
            onTap: onSeeAllClicked,
            child: const Padding(
              padding: EdgeInsets.all(2.0),
              child: Icon(
                CupertinoIcons.right_chevron,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
