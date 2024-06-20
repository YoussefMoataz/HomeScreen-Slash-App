import 'package:flutter/cupertino.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/dimensions.dart';
import '../../../../config/theme/text_styles.dart';

class SectionHeader extends StatelessWidget {
  final String sectionName;
  final VoidCallback onSeeAllClicked;

  const SectionHeader(
      {super.key, required this.sectionName, required this.onSeeAllClicked});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Positioned(
          left: defaultPadding,
          child: Text(
            sectionName,
            style: sectionNameTextStyle,
          ),
        ),
        Positioned(
          right: defaultPadding,
          child: Row(
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
          ),
        ),
      ],
    );
  }
}
