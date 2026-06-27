part of 'discography_page.dart';

class DiscographyPageMobile extends StatelessWidget {
  const DiscographyPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(selectedRoute: DiscographyPage.route),
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFBAB9B8),
                          Color(0xFF696967),
                          Color(0xFF3F3F3D),
                          Color(0xFF1D1D1B),
                        ],
                        stops: [0.0, 0.30, 0.45, 1.0],
                        begin: AlignmentGeometry.topCenter,
                        end: AlignmentGeometry.bottomCenter,
                      ),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Image(
                                image: AssetImage(
                                  'assets/effects/grainy_effect3.webp',
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 60),
                                      Align(
                                        alignment: AlignmentGeometry.centerLeft,
                                        child: StaatlichesText(
                                          text: 'DISCOGRAPHY',
                                          fontSize: 57,
                                        ),
                                      ),
                                      ...records.entries.map(
                                        (r) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 30,
                                          ),
                                          child: RecordWidget(
                                            record: r.key,
                                            hover: r.value,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SeparatorsLines(
                                  invertedColors: true,
                                  invertedWidths: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                        CollaborationTimeline(),
                        Footer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
