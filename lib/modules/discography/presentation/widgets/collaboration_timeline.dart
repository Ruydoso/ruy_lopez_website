import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/utils.dart';
import 'package:ruy_lopez_website/modules/discography/presentation/widgets/collaboration_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../domain/collaboration.dart';

class CollaborationTimeline extends StatefulWidget {
  const CollaborationTimeline({super.key});

  @override
  State<CollaborationTimeline> createState() => _CollaborationTimelineState();
}

class _CollaborationTimelineState extends State<CollaborationTimeline> {
  bool isCollaborationSectionVisible = false;
  bool animationTriggered = false;
  double opacity = 0.29;

  final Map<int, bool> _expanded = {2015: false, 2020: false, 2025: false};

  final Map<int, List<Collaboration>> collaborations = {
    2025: [
      Collaboration(
        imagePath: 'assets/images/collaborations/collab1.webp',
        link: 'https://open.spotify.com/intl-es/album/1tEFMXDncFNzDKbMSj5vlA',
        year: 2025,
      ),
      Collaboration(
        imagePath: 'assets/images/collaborations/collab2.webp',
        link:
            'https://music.apple.com/en/album/espacio-tribal-en-vivo/1859687328?l=en-GB',
        year: 2024,
      ),
      Collaboration(
        imagePath: 'assets/images/collaborations/collab3.webp',
        link: 'https://open.spotify.com/intl-en/album/09Cqpp4cQW3BaJcGFnru5C',
        year: 2023,
      ),
      Collaboration(
        imagePath: 'assets/images/collaborations/collab4.webp',
        link:
            'https://music.apple.com/us/album/c%C3%A9sar-l%C3%B3pez-y-habana-ensemble-jazz-band/1566648758',
        year: 2021,
      ),
    ],
    2020: [
      Collaboration(
        imagePath: 'assets/images/collaborations/collab5.webp',
        link: 'https://music.apple.com/us/album/te-lo-dije/1850052032',
        year: 2020,
      ),
      Collaboration(
        imagePath: 'assets/images/collaborations/collab6.webp',
        link: 'https://music.apple.com/fr/album/invitation/1485428193?l=en-GB',
        year: 2019,
      ),
      Collaboration(
        imagePath: 'assets/images/collaborations/collab7.webp',
        link:
            'https://music.apple.com/us/album/un-d%C3%ADa-cualquiera/1850042980',
        year: 2019,
      ),
      Collaboration(
        imagePath: 'assets/images/collaborations/collab8.webp',
        link: 'https://music.apple.com/us/album/el-viaje/1850035252',
        year: 2018,
      ),
    ],
    2015: [
      Collaboration(
        imagePath: 'assets/images/collaborations/collab9.webp',
        link: 'https://music.apple.com/es/album/havana-paris-dakar/986317770',
        year: 2015,
      ),
      Collaboration(
        imagePath: 'assets/images/collaborations/collab10.webp',
        link:
            'https://music.apple.com/es/album/el-pais-de-las-maravillas/431062617?i=431062732',
        year: 2011,
      ),
      Collaboration(
        imagePath: 'assets/images/collaborations/collab11.webp',
        link: 'https://music.apple.com/fr/album/contrastes/1019659939?l=en-GB',
        year: 2009,
      ),
      Collaboration(
        imagePath: 'assets/images/collaborations/collab12.webp',
        link:
            'https://music.apple.com/fr/album/clasicos-de-cuba/299933526?l=en-GB',
        year: 2008,
      ),
      Collaboration(
        imagePath: 'assets/images/collaborations/collab13.webp',
        link: 'https://music.apple.com/us/album/canciones/639917072',
        year: 2007,
      ),
    ],
  };

  void _triggerTimeLineAnimation() async {
    if (!animationTriggered) {
      animationTriggered = true;
      setState(() {
        isCollaborationSectionVisible = true;
      });
      Future.delayed(
        Duration(milliseconds: 1000),
        () => setState(() {
          opacity = 0.5;
          _expanded[2025] = true;
        }),
      );
      Future.delayed(
        Duration(milliseconds: 1700),
        () => setState(() {
          opacity = 0.7;
          _expanded[2020] = true;
        }),
      );
      Future.delayed(
        Duration(milliseconds: 2000),
        () => setState(() {
          opacity = 1;
          _expanded[2015] = true;
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final mobile = width < mobileBreakPoint;
    final heigth = MediaQuery.of(context).size.height;
    if (heigth < 450) {
      _triggerTimeLineAnimation();
    }

    return VisibilityDetector(
      key: Key('timeLineKey'),
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction > 0.6) {
          _triggerTimeLineAnimation();
        }
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF71716F), Color(0xFF696967), Color(0xFF1D1D1B)],
            stops: [0.0, 0.1, 1.0],
            begin: AlignmentGeometry.topCenter,
            end: AlignmentGeometry.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: opacity,
                child: Image(
                  image: AssetImage('assets/effects/disc_grainy_effect_2.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (!mobile)
              Positioned(
                left: 0,
                bottom: 0,
                height: 506,
                child: Opacity(
                  opacity: 0.5,
                  child: Image(
                    image: AssetImage(
                      'assets/effects/purple_grainy_effect_l.webp',
                    ),
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.multiply,
                  ),
                ),
              ),
            if (!mobile)
              Positioned(
                height: 506,
                bottom: 0,
                right: 0,
                child: Opacity(
                  opacity: 0.5,
                  child: Image(
                    image: AssetImage(
                      'assets/effects/purple_grainy_effect_r.webp',
                    ),
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.multiply,
                  ),
                ),
              ),

            Positioned(
              top: 0,
              bottom: 15,
              left: mobile ? 20 : width * 0.15,
              child: Container(width: mobile ? 5.5 : 7, color: Colors.white),
            ),
            Positioned(
              top: 0,
              bottom: 15,
              left: mobile ? 20 : width * 0.15,
              child: TweenAnimationBuilder<double>(
                curve: Curves.easeInOut,
                tween: Tween<double>(
                  begin: 0.0,
                  end: isCollaborationSectionVisible ? 1.0 : 0.0,
                ),
                duration: const Duration(seconds: 3),
                builder: (context, value, child) {
                  return Container(
                    width: mobile ? 5.5 : 7,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: const [Color(0xFFF213F8), Colors.white],
                        stops: [value, value],
                      ),
                    ),
                  );
                },
              ),
            ),

            Positioned(
              top: 0,
              bottom: 0,
              left: (mobile ? 20 : width * 0.15) - 9,
              child: Container(
                width: 4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFA3A3A2),
                      Color(0xFF696967),
                      Color(0xFF1D1D1B),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.43, 1.0],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: (mobile ? 20 : width * 0.15) - 18,
              child: Container(
                width: 3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFA3A3A2),
                      Color(0xFF696967),
                      Color(0xFF1D1D1B),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.43, 1.0],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: (mobile ? 20 : width * 0.15) - 27,
              child: Container(
                width: 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFA3A3A2),
                      Color(0xFF696967),
                      Color(0xFF1D1D1B),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.43, 1.0],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: (mobile ? 20 : width * 0.15) - 36,
              child: Container(
                width: 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFA3A3A2),
                      Color(0xFF696967),
                      Color(0xFF1D1D1B),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.43, 1.0],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: mobile ? 10 : width * 0.15 - 16,
                top: 80,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: mobile
                        ? EdgeInsetsGeometry.only(left: 10)
                        : const EdgeInsets.only(right: 158.0),
                    child: RobotoText(
                      text: 'COLLABORATIONS',
                      fontSize: mobile ? 32 : 45,
                      color: Color(0xFF330833),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildTimeLineSection(2025, mobile, opacity),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: _buildTimeLineSection(2020, mobile, opacity),
                  ),
                  _buildTimeLineSection(2015, mobile, opacity),
                  const SizedBox(height: 100),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              height: 17,
              child: Image(
                image: AssetImage(
                  'assets/effects/grainy_purple_line_effect.webp',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeLineSection(int year, bool mobile, double opacity) {
    final albums = collaborations[year];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _expanded[year]! ? Color(0xFF6D0070) : Color(0xFFF213F8),
              ),
              child: AnimatedRotation(
                turns: _expanded[year]! ? 0 : -0.5,
                duration: const Duration(milliseconds: 300),
                child: Icon(
                  Icons.expand_more,
                  color: _expanded[year]! ? Color(0xFFF0B3E7) : Colors.black,
                  size: mobile ? 25 : 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: RobotoText(
                text: '$year',
                fontWeight: FontWeight.bold,
                fontSize: mobile ? 26 : 33,
                color: Color(0xFFD100D7),
              ),
            ),
          ],
        ),

        Opacity(
          opacity: opacity,
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 16),
            child: AnimatedSize(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOutCubic,
              alignment: Alignment.topLeft,
              child: _expanded[year]!
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 3),
                          if (!mobile) const SizedBox(width: 150),
                          ...albums!.map(
                            (a) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: CollaborationWidget(collaboration: a),
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(width: double.infinity, height: 0),
            ),
          ),
        ),
      ],
    );
  }
}
