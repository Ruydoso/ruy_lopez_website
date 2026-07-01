import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/presentation/widgets/grainy_screen_decoration/top_grainy_screen_decoration.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';
import 'package:ruy_lopez_website/modules/workshop/presentation/widgets/video_link_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/videos.dart';

part 'workshop_page_desktop.dart';
part 'workshop_page_mobile.dart';

final List<Video> videos = [
  Video(
    title: '"La Comparsa" - MasterClass 1',
    link: 'https://youtu.be/OmCU0cB-_ys',
    imagePath: 'assets/images/videos/video1.jpg',
  ),
  Video(
    title: '"Blue de Marietta" - MasterClass 2',
    link: 'https://youtu.be/FYwya07xJcg',
    imagePath: 'assets/images/videos/video2.jpg',
  ),
  Video(
    title: '"La Viña del Señor" - MasterClass 3',
    link: 'https://youtu.be/c81gghp2Gfc',
    imagePath: 'assets/images/videos/video3.jpg',
  ),
];

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
