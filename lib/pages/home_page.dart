import 'package:card_swiper/card_swiper.dart';
import 'package:ecomerce/components/home_page/input_search.dart';
import 'package:ecomerce/components/home_page/swiper_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List imagePath = [
    'assets/img/banner.jpg',
    'assets/img/banner.jpg',
    'assets/img/banner.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const InputSearch(),
          SwiperCard(),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 340,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Show all',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 15),
            child: SizedBox(
              height: 48,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent[400],
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),onPressed: (){}, child: Text('All', style: TextStyle(color: Colors.white),)),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
