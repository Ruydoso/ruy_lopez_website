import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/presentation/widgets/grainy_screen_decoration/top_grainy_screen_decoration.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';
import 'package:url_launcher/url_launcher.dart';

part 'workshop_page_desktop.dart';
part 'workshop_page_mobile.dart';

class WorkshopPage extends StatelessWidget {
  static const route = '/workshop';
  const WorkshopPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < mobileBreakPoint) {
      return WorkshopPageMobile();
    } else {
      return WorkshopPageDesktop();
    }
  }
}
