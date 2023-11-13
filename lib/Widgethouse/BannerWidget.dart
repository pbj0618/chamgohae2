import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:chamgohae1/main/Bookmark.dart';
import 'package:chamgohae1/main/Search1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

List<String> banner = [
  'assets/banner1.png',
  'assets/banner1.png'
];

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: banner.length,
      options: CarouselOptions(
          height: 180.0,
          viewportFraction: 1.0
      ),
      itemBuilder: (context, itemIndex, realIndex) {
        return Stack(
          children: [
            Image.asset(
              "${banner[itemIndex]}",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.black38,
                padding: const EdgeInsets.all(4.0),
                margin: EdgeInsets.all(16.0),
                child: Text(
                  (itemIndex + 1).toString() + " / " + banner.length.toString(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}