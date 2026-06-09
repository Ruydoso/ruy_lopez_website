import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  final List<(String, String)> desktopElements = [
    ('assets/images/carousel_image1_desktop.png', ''),
    ('assets/images/carousel_image2_desktop.png', ''),
    ('assets/images/carousel_image3_desktop.png', ''),
  ];
  final List<(String, String)> mobileElements = [
    ('assets/images/carousel_image1_mobile.png', ''),
    ('assets/images/carousel_image2_mobile.png', ''),
    ('assets/images/carousel_image3_mobile.png', ''),
  ];
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Column(
          children: [
            CarouselSlider(
              carouselController: _carouselController,
              items:
                  (width < mobileBreakPoint ? mobileElements : desktopElements)
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: GestureDetector(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: SizedBox(
                                width: double.infinity,
                                child: Image(
                                  image: AssetImage(e.$1),
                                  fit: BoxFit.cover,
                                  color: Color(0x996D0070),
                                  colorBlendMode: BlendMode.colorDodge,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
              options: CarouselOptions(
                viewportFraction: 1.0,
                height: width < mobileBreakPoint ? 330 : 504,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: desktopElements.asMap().entries.map((entry) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: _currentIndex == entry.key
                          ? Color(0xFFFFD7F7)
                          : Color(0xFF544151),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        Positioned(
          right: 10,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: IconButton(
              style: ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsetsGeometry.zero),
                backgroundColor: WidgetStatePropertyAll(Color(0xFFDABFD3)),
              ),
              onPressed: () {
                _carouselController.nextPage(
                  duration: Durations.medium1,
                  curve: Curves.easeInOut,
                );
              },
              icon: Icon(Icons.arrow_right_outlined, size: 60),
            ),
          ),
        ),
        Positioned(
          left: 10,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: IconButton(
              style: ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsetsGeometry.zero),
                backgroundColor: WidgetStatePropertyAll(Color(0xFFDABFD3)),
              ),
              onPressed: () {
                _carouselController.previousPage(
                  duration: Durations.medium1,
                  curve: Curves.easeInOut,
                );
              },
              icon: Icon(Icons.arrow_left_outlined, size: 60),
            ),
          ),
        ),
      ],
    );
  }
}
