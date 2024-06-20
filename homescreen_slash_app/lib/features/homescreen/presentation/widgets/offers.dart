import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:homescreen_slash_app/features/homescreen/domain/entities/offer_entity.dart';

import '../../../../config/theme/dimensions.dart';

class Offers extends StatefulWidget {
  final List<OfferEntity> offers;

  const Offers({super.key, required this.offers});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 2.8,
                viewportFraction: 0.85,
                enlargeCenterPage: true,
                enlargeFactor: 0.2,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: widget.offers
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
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.offers.asMap().entries.map((entry) {
              // return GestureDetector(
              //   onTap: () => _controller.animateToPage(entry.key),
              //   child: Container(
              //     width: 12.0,
              //     height: 12.0,
              //     margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              //     decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: (Theme.of(context).brightness == Brightness.dark
              //                 ? Colors.white
              //                 : Colors.black)
              //             .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              //   ),
              // );
              return Container(
                width: 8,
                height: 8,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
