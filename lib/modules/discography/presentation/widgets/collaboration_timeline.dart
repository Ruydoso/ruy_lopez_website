import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/utils.dart';
import 'package:ruy_lopez_website/modules/discography/presentation/widgets/collaboration_widget.dart';

import '../../domain/collaboration.dart';

class CollaborationTimeline extends StatefulWidget {
  const CollaborationTimeline({super.key});

  @override
  State<CollaborationTimeline> createState() => _CollaborationTimelineState();
}

class _CollaborationTimelineState extends State<CollaborationTimeline> {
  final Map<int, bool> _expanded = {2015: true, 2020: true, 2025: true};

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
        imagePath: 'assets/images/collaborations/collab13.png',
        link: 'https://music.apple.com/us/album/canciones/639917072',
        year: 2007,
      ),
    ],
  };

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final mobile = width < mobileBreakPoint;

    return DecoratedBox(
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
            child: Image(
              image: AssetImage('assets/effects/disc_grainy_effect_2.png'),
              fit: BoxFit.cover,
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
                    'assets/effects/purple_grainy_effect_l.png',
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
                    'assets/effects/purple_grainy_effect_r.png',
                  ),
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.multiply,
                ),
              ),
            ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            height: 17,
            child: Image(
              image: AssetImage('assets/effects/grainy_purple_line_effect.png'),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: mobile ? 20 : width * 0.1,
            child: Container(width: mobile ? 5.5 : 7, color: Color(0xFFF213F8)),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: mobile ? 10 : width * 0.1 - 16,
              top: 80,
            ),
            child: Column(
              children: [
                RobotoText(
                  text: 'COLLABORATIONS',
                  fontSize: mobile ? 32 : 45,
                  color: Color(0xFF330833),
                ),
                const SizedBox(height: 20),
                _buildTimeLineSection(2025, mobile),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: _buildTimeLineSection(2020, mobile),
                ),
                _buildTimeLineSection(2015, mobile),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeLineSection(int year, bool mobile) {
    final albums = collaborations[year];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: GestureDetector(
            onTap: () => setState(() => _expanded[year] = !_expanded[year]!),
            child: Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF6D0070),
                  ),
                  child: AnimatedRotation(
                    turns: _expanded[year]! ? 0 : -0.5,
                    duration: const Duration(milliseconds: 300),
                    child: Icon(
                      Icons.expand_more,
                      color: Color(0xFFF0B3E7),
                      size: mobile ? 25 : 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: RobotoText(
                  text: '$year',
                  fontWeight: FontWeight.bold,
                  fontSize: mobile ? 26 : 33,
                  color: Color(0xFFD100D7),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOutCubic,
                  alignment: Alignment.topLeft,
                  child: _expanded[year]!
                      ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              if (!mobile) const SizedBox(width: 50),
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
            ],
          ),
        ),
      ],
    );
  }
}
