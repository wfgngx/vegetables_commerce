import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowSliderPhotos extends StatelessWidget {
  const ShowSliderPhotos({Key? key,required this.photoListSlider}) : super(key: key);
  final List photoListSlider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150.h,
        width: 400,
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return CarouselSlider.builder(
            itemCount: photoListSlider.length,
            itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
                ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          photoListSlider[index],
                          width: MediaQuery.of(context).size.width + 100,
                          fit: BoxFit.cover,
                        ))),
            options: CarouselOptions(
              autoPlay: true,
              // animateToClosest: true,
              autoPlayCurve: Curves.decelerate,
              aspectRatio: constraints.maxWidth / constraints.maxHeight,
              // height: 400,
              viewportFraction: .8,
              // autoPlay: true
            ),
          );
        }));
  }
}
