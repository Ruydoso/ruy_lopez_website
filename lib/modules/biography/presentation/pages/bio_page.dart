import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';
import 'package:url_launcher/url_launcher.dart';

part 'bio_page_desktop.dart';
part 'bio_page_mobile.dart';

class BioPage extends StatelessWidget {
  static const route = '/bio';
  const BioPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < mobileBreakPoint) {
      return BioPageMobile();
    } else {
      return BioPageDesktop();
    }
  }
}
