import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/utils.dart';

part 'custom_app_bar_desktop.dart';
part 'custom_app_bar_mobile.dart';

class CustomAppBar extends StatelessWidget {
  final String selectedRoute;
  const CustomAppBar({super.key, this.selectedRoute = '/'});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < mobileBreakPoint) {
      return CustomAppBarMobile();
    } else {
      return CustomAppBarDesktop(selectedRoute: selectedRoute);
    }
  }
}
