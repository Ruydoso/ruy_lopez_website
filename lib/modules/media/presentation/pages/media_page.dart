import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';
import 'package:ruy_lopez_website/modules/media/presentation/widgets/audiovisual_poster.dart';
import 'package:ruy_lopez_website/modules/media/presentation/widgets/interactive_music_player.dart';

part 'media_page_desktop.dart';
part 'media_page_mobile.dart';

class MediaPage extends StatelessWidget {
  static const route = '/media';
  final bool goToMovies;

  const MediaPage({super.key, this.goToMovies = false});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < mobileBreakPoint) {
      return MediaPageMobile(goToMovies: goToMovies);
    } else {
      return MediaPageDesktop(goToMovies: goToMovies);
    }
  }
}
