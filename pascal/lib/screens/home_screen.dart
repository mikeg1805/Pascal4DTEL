import 'dart:js_util';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "lib/assets/gazzetta.png",
    "lib/assets/libri.jpg",
    "lib/assets/italia.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              autoPlayInterval: Duration(milliseconds: 2100),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:Row(children: [
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Container(width: 7,height: 15,color: Colors.black,),
              ),
              Text('News'),

            ],)
            
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
              return Column(
                children: [
                  Container (
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        const CircleAvatar(
                        radius: 33,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [
                              Text('3 marzo 2023'),
                              Text('data', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                Padding(
                padding:const EdgeInsets.all(8.0),
                 child: Divider(thickness: 0.5)),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
