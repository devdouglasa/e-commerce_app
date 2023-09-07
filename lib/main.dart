import 'package:ecomerce/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'components/home_page/title_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List imagePath = [
    'assets/img/banner,jpg',
    'assets/img/banner,jpg',
    'assets/img/banner,jpg'
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const TitleBar(),
        ),
        body: HomePage(),
      ),
    );
  }
}
