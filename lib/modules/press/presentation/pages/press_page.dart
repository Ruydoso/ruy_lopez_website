import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/utils.dart';
import 'package:ruy_lopez_website/modules/press/presentation/widgets/press_widget.dart';

import '../../domain/news.dart';

part 'press_page_desktop.dart';
part 'press_page_mobile.dart';

final List<News> _news = [
  News(
    title: 'Harold López-Nussa - Nueva Timba',
    corpus:
        'Como abrebocas de lo que será este nuevo album Nueva Timba, el aclamado pianista cubano Harold López Nussa nos presenta Bonito... ',
    assetPath: 'assets/images/news/news1.png',
    date: '11 july 2025',
    media: 'CUBADEBATE',
    link: 'https://www.solarlatinclub.com/harold-lopez-nussa-nueva-timba/',
  ),
  News(
    title: 'Virtuosismo y esencias de La Habana.',
    corpus:
        'La música latina fue un descubrimiento para el bop, que sonaba muy oscuro a veces, con su complejidad armónica y la profundidad del blues que imprimió Charlie Parke',
    assetPath: 'assets/images/news/news2.png',
    date: '2 november 2025',
    media: 'Granada Hoy',
    link:
        'https://www.granadahoy.com/ocio/virtuosismo-esencias-habana-critica-musica_0_2005149930.html',
  ),
  News(
    title: 'Harold López Nussa in Nueva Timba with Ruy Adrian López-Nussa.',
    corpus:
        'Blending the flavors of jazz with the Afro-Cuban influences of his upbringing, pianist Harold López-Nussa along with Luques Curtis, Ruy Adrian López-Nussa and Grégoire Maret are bringing their eclectic',
    assetPath: 'assets/images/news/news3.png',
    date: '5 october 2025',
    media: 'ENVISIONWISE',
    link:
        'https://envisionwise.com/local-events?_evDiscoveryPath=/event%2F3180055-harold-l-pez-nussa-in-nueva-timba-with-ruy-adrian-l-pez-nussa-luques-curtis-and-gr-goire-maret',
  ),
  News(
    title: 'Harold López-Nussa “Nueva Timba”',
    corpus:
        'Sometimes maintaining tradition while breathing new life into old modes is challenging. Pianist/composer López Nussa seems delight',
    assetPath: 'assets/images/news/news4.png',
    date: 'november 25',
    media: 'DOWNBEAT',
    link:
        'https://drive.google.com/file/d/1bTeWJjJ_WgtWyBmom-nNNgpDwN1nzl19/view?usp=drive_link',
  ),
  News(
    title: 'Timba a la americana rewiew / the future of Latin Jazz',
    corpus:
        'Jazz is renowed for his constant renowned, so it´s odd that Afro-Cuban jazz has barely changed since Gizzy Gillespie, Machito and others ',
    assetPath: 'assets/images/news/news5.png',
    date: '6 september 2023',
    media: 'THE TIMES',
    link:
        'https://drive.google.com/file/d/1kZHmdGpqm3xZBFFJ29b6hnT4g5WCS3TB/view?usp=drive_link',
  ),
];

class PressPage extends StatelessWidget {
  static const route = '/press';
  const PressPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < mobileBreakPoint) {
      return PressPageMobile();
    } else {
      return PressPageDesktop();
    }
  }
}
