import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/texts/custom_texts.dart';
import 'package:ruy_lopez_website/core/presentation/widgets/footer/social_network_icon.dart';
import 'package:ruy_lopez_website/core/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

part 'footer_desktop.dart';
part 'footer_mobile.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < mobileBreakPoint) {
      return FooterMobile();
    } else {
      return FooterDesktop();
    }
  }
}
