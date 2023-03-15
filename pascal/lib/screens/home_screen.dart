import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images= [
    "lib/assets/gazzetta.png",
    "lib/assets/libri.jpg",
    "lib/assets/italia.jpg",
  ];

  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        CarouselSlider.builder(
  itemCount: images.length,
  itemBuilder: (context, index, realIndex) {
    return Container(
      child: Image.asset(images[index], fit: BoxFit.fill), 
    );
  },
  options: CarouselOptions(
    height: 200.0,
    autoPlay: true,
    autoPlayInterval: Duration(milliseconds:2100 ),),
)
        ],
      ),
    );
      
  }
}