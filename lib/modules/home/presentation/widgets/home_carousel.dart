import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  final List<(String, String)> desktopElements = [
    ('assets/images/carousel_image1_desktop.webp', '/discography'),
    ('assets/images/carousel_image2_desktop.webp', '/media'),
    ('assets/images/carousel_image3_desktop.webp', '/workshop'),
  ];
  final List<(String, String)> mobileElements = [
    ('assets/images/carousel_image1_mobile.webp', '/discography'),
    ('assets/images/carousel_image2_mobile.webp', '/media'),
    ('assets/images/carousel_image3_mobile.webp', '/workshop'),
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final items = (width < mobileBreakPoint ? mobileElements : desktopElements)
        .map(
          (e) => MouseRegion(
            key: ValueKey(e.$1),
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, e.$2, arguments: true);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1200),
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
          ),
        )
        .toList();

    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: GestureDetector(
                onHorizontalDragEnd: (details) {
                  if (details.primaryVelocity! < 0) {
                    setState(() {
                      _currentIndex = (_currentIndex - 1).abs() % 3;
                    });
                  } else if (details.primaryVelocity! > 0) {
                    setState(() {
                      _currentIndex = (_currentIndex + 1) % 3;
                    });
                  }
                },
                child: AnimatedSwitcher(
                  switchInCurve: Curves.easeInOut,
                  duration: Durations.extralong4,
                  transitionBuilder: (child, animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: items[_currentIndex],
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: IconButton(
                  style: ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsetsGeometry.zero),
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFDABFD3)),
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = (_currentIndex + 1) % 3;
                    });
                  },
                  icon: Icon(Icons.arrow_right_outlined, size: 60),
                ),
              ),
            ),
            Positioned(
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: IconButton(
                  style: ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsetsGeometry.zero),
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFDABFD3)),
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = (_currentIndex - 1).abs() % 3;
                    });
                  },
                  icon: Icon(Icons.arrow_left_outlined, size: 60),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: desktopElements.asMap().entries.map((entry) {
              final size = _currentIndex == entry.key ? 12.0 : 8.0;
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: size,
                height: size,
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
    );
  }
}
