part of 'discography_page.dart';

class DiscographyPageDesktop extends StatelessWidget {
  const DiscographyPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(selectedRoute: DiscographyPage.route),
            Stack(
              alignment: AlignmentGeometry.bottomCenter,
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.8,
                    child: Image(
                      image: AssetImage(
                        'assets/images/disc_image1_desktop.png',
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
                    image: AssetImage('assets/effects/grainy_effect_2l.png'),
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.multiply,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: Image(
                    image: AssetImage('assets/effects/grainy_effect_2r.png'),
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.multiply,
                  ),
                ),
                SeparatorsLines(),

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
                          ...records.map((r) => RecordWidget(record: r)),
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
    );
  }
}
