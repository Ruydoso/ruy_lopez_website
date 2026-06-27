part of 'discography_page.dart';

class DiscographyPageDesktop extends StatelessWidget {
  const DiscographyPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(selectedRoute: DiscographyPage.route),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentGeometry.bottomCenter,
                    children: [
                      Positioned.fill(
                        child: Opacity(
                          opacity: 0.8,
                          child: Image(
                            image: AssetImage(
                              'assets/images/disc_image1_desktop.webp',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        top: 0,
                        child: Image(
                          image: AssetImage(
                            'assets/effects/grainy_effect_2l.webp',
                          ),
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.multiply,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        top: 0,
                        child: Image(
                          image: AssetImage(
                            'assets/effects/grainy_effect_2r.webp',
                          ),
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.multiply,
                        ),
                      ),
                      SeparatorsLines(
                        invertedColors: true,
                        invertedWidths: true,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                          right: MediaQuery.of(context).size.width * 0.05,
                          bottom: 120,
                          top: 80,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StaatlichesText(text: 'DISCOGRAPHY', fontSize: 96),
                            const SizedBox(height: 60),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...records.entries.map(
                                  (r) => RecordWidget(
                                    record: r.key,
                                    hover: r.value,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CollaborationTimeline(),
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
