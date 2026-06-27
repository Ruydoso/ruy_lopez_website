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
    assetPath: 'assets/images/news/news1.webp',
    date: '11 july 2025',
    media: 'CUBADEBATE',
    link: 'https://www.solarlatinclub.com/harold-lopez-nussa-nueva-timba/',
  ),
  News(
    title: 'Virtuosismo y esencias de La Habana.',
    corpus:
        'La música latina fue un descubrimiento para el bop, que sonaba muy oscuro a veces, con su complejidad armónica y la profundidad del blues que imprimió Charlie Parke',
    assetPath: 'assets/images/news/news2.webp',
    date: '2 november 2025',
    media: 'Granada Hoy',
    link:
        'https://www.granadahoy.com/ocio/virtuosismo-esencias-habana-critica-musica_0_2005149930.html',
  ),
  // News(
  //   title: 'Harold López Nussa in Nueva Timba with Ruy Adrian López-Nussa.',
  //   corpus:
  //       'Blending the flavors of jazz with the Afro-Cuban influences of his upbringing, pianist Harold López-Nussa along with Luques Curtis, Ruy Adrian López-Nussa and Grégoire Maret are bringing their eclectic',
  //   assetPath: 'assets/images/news/news3.webp',
  //   date: '5 october 2025',
  //   media: 'ENVISIONWISE',
  //   link:
  //       'https://envisionwise.com/local-events?_evDiscoveryPath=/event%2F3180055-harold-l-pez-nussa-in-nueva-timba-with-ruy-adrian-l-pez-nussa-luques-curtis-and-gr-goire-maret',
  // ),
  News(
    title: 'Harold López-Nussa “Nueva Timba”',
    corpus:
        'Sometimes maintaining tradition while breathing new life into old modes is challenging. Pianist/composer López Nussa seems delight',
    assetPath: 'assets/images/news/news4.webp',
    date: 'november 25',
    media: 'DOWNBEAT',
    link:
        'https://drive.google.com/file/d/1bTeWJjJ_WgtWyBmom-nNNgpDwN1nzl19/view?usp=drive_link',
  ),
  News(
    title: 'Timba a la americana rewiew / the future of Latin Jazz',
    corpus:
        'Jazz is renowed for his constant renowned, so it´s odd that Afro-Cuban jazz has barely changed since Gizzy Gillespie, Machito and others ',
    assetPath: 'assets/images/news/news5.webp',
    date: '6 september 2023',
    media: 'THE TIMES',
    link:
        'https://drive.google.com/file/d/1kZHmdGpqm3xZBFFJ29b6hnT4g5WCS3TB/view?usp=drive_link',
  ),
];

final List<News> _oldNews = [
  News(
    title: 'Ruy Adrián López-Nussa: con las puertas abiertas a la composición',
    corpus:
        'Escuchar a Ruy hablar de la música y su familia resulta una experiencia única para cualquiera que haya tenido la oportunidad de conversar con el joven compositor. El alma de cada una de sus piezas es, justamente, la frescura y la alegría que llenan las palabras del compositor cuando habla de su vida como músico, un camino que nació con él. A la vida musical de Ruy Adrián López-Nussa se acercó la revista Bienvenidos, en entrevista con el compositor. faucibus non augue imperdiet et cursus.',
    assetPath: 'assets/images/news/news7.webp',
    date: '29, april, 2021',
    media: 'Bienvenidos',
    link: 'https://www.bienvenidoscuba.es/revista/tag/ruy-adrian-lopez-nussa/',
  ),
  News(
    title:
        'Ruy Adrián López-Nussa entre los finalistas de certamen de jazz en España',
    corpus:
        'El joven compositor, pianista y percusionista cubano Ruy Adrián López-Nussa forma parte de los finalistas del IV Concurso de Jazz Tete Montoliu, auspiciado por la Sociedad General de Autores y Editores (SGAE). Fundado en 1999, el Concurso de jazz Tete Montoliu rinde homenaje a una de las figuras  fundamentales del género en España. López-Nussa compite junto a los compositores españoles Pablo Gutiérrez, Juan Méndez y el uruguayo Fernando Michelin. La cita musical admitió más de 150 obras.EEEfaucibus non augue imperdiet et cursus.',
    assetPath: 'assets/images/news/news8.webp',
    date: '17, marzo, 2021',
    media: 'OnCuba',
    link:
        'https://oncubanews.com/cultura/musica/figura-el-cubano-ruy-adrian-lopez-nussa-entre-los-finalistas-de-certamen-de-jazz-en-espana/',
  ),
  News(
    title: 'Ruy Adrián López-Nussa, ganador del Tete Montoliu 2021.',
    corpus:
        'Una oda en recuerdo al maestro de jazz Lyle Mays, la pieza A Lyle de Ruy Adrián López-Nussa se ha alzado con el primer premio del IV Concurso SGAE para Obras de',
    assetPath: 'assets/images/news/news9.webp',
    date: '9, april, 2021',
    media: 'fundación sgae',
    link:
        'https://fundacionsgae.org/actualidad/ruy-adrian-lopez-nussa-ganador-del-tete-montoliu-2021/',
  ),
  News(
    title: 'Dos Lenguajes. Nueva Producción musical.',
    corpus:
        'El joven baterista Ruy Adrián López-Nussa presentará su primer CD-DVD "Dos Lenguajes" bajo el sello discográfico BisMusic, disponible desde el 5 ',
    assetPath: 'assets/images/news/news10.webp',
    date: '6, february, 2021',
    media: 'CUBANOS FAMOSOS',
    link:
        'https://www.cubanosfamosos.com/es/ruy-adrian-lopez-nussa-presenta-su-cd-dvd-dos-lenguajes',
  ),
  News(
    title: 'Dos lenguajes desde el jazz de Ruy Adrián López-Nussa',
    corpus:
        ' El compositor y percusionista cubano, Ruy Adrián López-Nussa, promueve hoy su primer fonograma, Dos lenguajes, que involucra a destacados exponentes del jazz y responde a su doble formación en el piano y la batería.',
    assetPath: 'assets/images/news/news11.webp',
    date: '5, february, 2021',
    media: 'CUBA.CU',
    link:
        'https://www.cubanosfamosos.com/es/ruy-adrian-lopez-nussa-presenta-su-cd-dvd-dos-lenguajes',
  ),
  News(
    title: 'Ruy Adrián López-Nussa presenta sus Dos Lenguajes.',
    corpus:
        'El joven baterista Ruy Adrián López-Nussa presentará su primer CD-DVD Dos Lenguajes bajo el sello discográfico BisMusic, disponible desde',
    assetPath: 'assets/images/news/news12.webp',
    date: '6, september, 2023',
    media: 'THE TIMES',
    link:
        'https://drive.google.com/file/d/1kZHmdGpqm3xZBFFJ29b6hnT4g5WCS3TB/view?usp=drive_link',
  ),
  News(
    title: 'Ruy Adrían López-Nussa releases new music video.',
    corpus:
        'Young talented drummer Ruy Adrián López-Nussa premiered a new music video for the tune ‘Lindero’ on the YouTube channel of the record company BisMusic. In the piece, he is joined on piano by renowned Cuban pianist Aldo Lopez Gavilan',
    assetPath: 'assets/images/news/news13.webp',
    date: '3, february, 2021',
    media: 'cubarte',
    link:
        'https://cubarte.cult.cu/en/cuban-music/ruy-adrian-lopez-nussa-releases-new-music-video/',
  ),
  News(
    title: 'Ruy Adrián ganador del Premio “Tete Montoliu”.',
    corpus:
        'Madrid, 10 abr (EFE).- Una oda en recuerdo al maestro de jazz Lyle Mays, la pieza “A Lyle” de Ruy Adrián López-Nussa, ha conseguido el primer',
    assetPath: 'assets/images/news/news14.webp',
    date: '10, august, 2020',
    media: 'elDiario.es',
    link:
        'https://www.eldiario.es/cultura/compositor-cubano-jazz-ruy-lopez-nussa-gana-premio-tete-montoliu_1_7395741.amp.html',
  ),
  News(
    title: 'Ruy Adrián triunfa en el concurso  de Jazz "Tete Montoliu".',
    corpus:
        'Ruy Adrián López-Nussa gana en Madrid el primer premio convocado por la SGAE como concurso para compositores de jazz "Tete Montoliu". Sigue los pasos de Alain Pérez y Ernán López Nussa, triunfadores en ediciones anteriores. Con una joven pero meteórica carrera a sus espaldas, el pianis',
    assetPath: 'assets/images/news/news14.webp',
    date: '10, april, 2020',
    media: 'CUBADEBATE',
    link:
        'http://www.cubadebate.cu/noticias/2021/04/10/ruy-adrian-lopez-nussa-triunfa-en-concurso-espanol-de-jazz-tete-montoliu/',
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
