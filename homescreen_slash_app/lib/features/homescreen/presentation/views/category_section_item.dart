import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/category_entity.dart';

class CategorySectionItem extends StatelessWidget {
  final CategoryEntity category;

  const CategorySectionItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: GestureDetector(
              onTap: () {
                print("Category: ${category.name} clicked");
              },
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Image.asset(category.imageUrl!),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(category.name!),
        ],
      ),
    );
  }
}
