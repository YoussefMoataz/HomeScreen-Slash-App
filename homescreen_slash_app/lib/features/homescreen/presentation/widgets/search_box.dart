import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/config/theme/dimensions.dart';

import '../../../../config/theme/colors.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 44,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search here..",
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: sectionSeeAllIconColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  prefixIcon: const Icon(CupertinoIcons.search),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            decoration: BoxDecoration(
              color: sectionSeeAllIconColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: GestureDetector(
              onTap: () {
                print("search filters clicked");
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.tune_rounded,
                  size: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
