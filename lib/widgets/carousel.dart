import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;

class Carousel extends StatelessWidget {
  final List imagesList = [
    'https://nogozo.com/static/nsp/images/c5.webp',
    'https://nogozo.com/static/book/images/c2.webp',
    'https://nogozo.com/static/book/images/c3.webp',
    'https://nogozo.com/static/book/images/c4.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imagesList
          .map((e) => Center(
                child: Image.network(
                  e,
                  height: 180,
                  fit: BoxFit.fill,
                ),
              ))
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
      ),
    );
  }
}
