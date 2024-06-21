import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/config/theme/text_styles.dart';

import '../../../../config/theme/dimensions.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Slash.",
            style: appBarTitleTextStyle,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_rounded,
                size: 30,
              ),
              Column(
                children: [
                  Text("Nasr City"),
                  Text("Cairo", style: TextStyle(fontWeight: FontWeight.w600),),
                ],
              ),
              IconButton(
                onPressed: () {
                  print("loaction clicked");
                },
                icon: Icon(
                  CupertinoIcons.chevron_down,
                  size: 30,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              print("notifications clicked");
            },
            icon: const Badge(
              isLabelVisible: true,
              child: Icon(
                CupertinoIcons.bell,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
