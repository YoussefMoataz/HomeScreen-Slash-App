import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/offer_entity.dart';

import '../../../../config/theme/dimensions.dart';

class Offers extends StatelessWidget {
  final List<OfferEntity> offers;

  const Offers({super.key, required this.offers});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.8,
          viewportFraction: 0.85,
          enlargeCenterPage: true,
          enlargeFactor: 0.2,
          enableInfiniteScroll: false,
        ),
        items: offers
            .map(
              (item) => Container(
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: GestureDetector(
                  child: Image.asset(
                    item.imageUrl!,
                    width: sectionProductItemWidth,
                    height: sectionProductItemWidth,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
