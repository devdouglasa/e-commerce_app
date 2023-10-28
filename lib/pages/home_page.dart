import 'package:ecomerce/components/home_page/categories.dart';
import 'package:ecomerce/components/home_page/input_search.dart';
import 'package:ecomerce/components/home_page/swiper_card.dart';
import 'package:ecomerce/components/product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List imagePath = [
    'assets/img/banner.jpg',
    'assets/img/banner.jpg',
    'assets/img/banner.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
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
              const CategoriesList(),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Product(nameProduct: 'AirPods', valueProduct: 32.60, classificationProduct: 4.9,),
                      Product(nameProduct: 'HeadPhone', valueProduct: 132, classificationProduct: 5.0),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Product(nameProduct: 'Xioami 11', valueProduct: 1000, classificationProduct: 5.9,),
                      Product(nameProduct: 'Pendrive', valueProduct: 40, classificationProduct: 4.0),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
