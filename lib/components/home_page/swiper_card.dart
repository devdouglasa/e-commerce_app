import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SwiperCard extends StatefulWidget {
  @override
  State<SwiperCard> createState() => _SwiperCardState();
}

class _SwiperCardState extends State<SwiperCard> {
  List imagePath = [
    'assets/img/banner.jpg',
    'assets/img/banner.jpg',
    'assets/img/banner.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          width: 340,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Swiper(
            layout: SwiperLayout.STACK,
            itemWidth: 340,
            itemCount: 3,
            itemBuilder: (context, index) => ClipRRect(borderRadius: BorderRadius.circular(20) ,child: Image.asset(imagePath[index], fit: BoxFit.fill,)),
          ),
        ),
      );
  }
}