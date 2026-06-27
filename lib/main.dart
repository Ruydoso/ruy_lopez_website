import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/modules/biography/biography.dart';
import 'package:ruy_lopez_website/modules/discography/presentation/pages/discography_page.dart';
import 'package:ruy_lopez_website/modules/home/home.dart';
import 'package:ruy_lopez_website/modules/media/media.dart';
import 'package:ruy_lopez_website/modules/press/presentation/pages/press_page.dart';
import 'package:ruy_lopez_website/modules/workshop/workshop.dart';

void main() {
  runApp(const RuyLopezWebsite());
}

class RuyLopezWebsite extends StatelessWidget {
  const RuyLopezWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruy Adrián López-Nussa',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        if (settings.name == MediaPage.route) {
          bool goToMovies = false;
          if (settings.arguments != null) {
            goToMovies = true;
          }
          return MaterialPageRoute(
            builder: (context) => MediaPage(goToMovies: goToMovies),
          );
        }
      },
      routes: {
        HomePage.route: (context) => HomePage(),
        WorkshopPage.route: (context) => WorkshopPage(),
        BioPage.route: (context) => BioPage(),
        PressPage.route: (context) => PressPage(),
        DiscographyPage.route: (context) => DiscographyPage(),
      },
    );
  }
}
