import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sambhavtask/constant.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';

class SecondImageSliderWithIndicator extends StatefulWidget {
  const SecondImageSliderWithIndicator({super.key});

  @override
  State<SecondImageSliderWithIndicator> createState() =>
      _FirstImageSliderWithIndicatorState();
}

class _FirstImageSliderWithIndicatorState
    extends State<SecondImageSliderWithIndicator> {
  int _currentIndex = 0;

  final List<String> imageList = [
    Assets.imagesIPhoneSlide,
    Assets.imagesSliderImage2,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        CarouselSlider.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(imageList[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            height: 130,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
        // Custom Indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            imageList.length,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding:
                  _currentIndex == index
                      ? const EdgeInsets.all(4)
                      : const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:
                    _currentIndex == index
                        ? kPrimaryColor
                        : kPrimaryColor.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
