import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../widgets/home_carousel.dart';

part 'home_page_desktop.dart';
part 'home_page_mobile.dart';

class HomePage extends StatelessWidget {
  static const route = '/';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < mobileBreakPoint) {
      return HomePageMobile();
    } else {
      return HomePageDesktop();
    }
  }
}
