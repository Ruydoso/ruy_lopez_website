import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';

import '../../domain/records.dart';
import '../widgets/collaboration_timeline.dart';
import '../widgets/record_widget.dart';

part 'discography_page_desktop.dart';
part 'discography_page_mobile.dart';

final records = [
  Records(
    imagePath: 'assets/images/records/record1.jpg',
    hoverImagePath: 'assets/images/records/record1_hover.png',
    link:
        'https://music.apple.com/us/album/de-ruydoso-a-san-francisco-single/1889920301?l=en-GB',
  ),
  Records(
    imagePath: 'assets/images/records/record2.png',
    hoverImagePath: 'assets/images/records/record2_hover.png',
    link:
        'https://music.apple.com/us/album/los-3-mosqueteros/1624812546?l=en-GB',
  ),
  Records(
    imagePath: 'assets/images/records/record3.png',
    hoverImagePath: 'assets/images/records/record3_hover.png',
    link:
        'https://music.apple.com/us/album/dos-lenguajes-en-vivo/1547698982?l=en-GB',
  ),
];

class DiscographyPage extends StatelessWidget {
  static const route = '/discography';
  const DiscographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < mobileBreakPoint) {
      return DiscographyPageMobile();
    } else {
      return DiscographyPageDesktop();
    }
  }
}
