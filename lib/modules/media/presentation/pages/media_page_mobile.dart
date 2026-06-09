part of 'media_page.dart';

class MediaPageMobile extends StatelessWidget {
  const MediaPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(selectedRoute: MediaPage.route),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            Stack(
              children: [
                SizedBox(width: double.infinity),
                Positioned.fill(
                  child: Image(
                    image: AssetImage('assets/images/media_image1_mobile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 40),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1,
                          ),
                          child: StaatlichesText(
                            text: 'COMPOSER FOR\nFILMS AND MEDIA ',
                            textAlign: TextAlign.left,
                            fontSize: 57,
                          ),
                        ),
                      ),
                    ),
                    InteractiveMusicPlayer(),
                    const SizedBox(height: 60),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFC6C6C5),
                      Color(0xFF696967),
                      Color(0xFF1D1D1B),
                    ],
                    stops: [0.0, 0.43, 1.0],
                    begin: AlignmentGeometry.topCenter,
                    end: AlignmentGeometry.bottomCenter,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: RobotoText(
                            text: 'FILMS WITH RUY\nSOUNDTRACK',
                            color: Color(0xFF330833),
                            fontSize: 32,
                            height: 1.32,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: AudiovisualPoster(
                            assetPath: 'assets/images/audiovisual_1.jpg',
                            url:
                                'https://youtu.be/Wt2gaVmu0eQ?si=WgOGE3p3BxfZ5zmf',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: AudiovisualPoster(
                            assetPath: 'assets/images/audiovisual_2.png',
                            url:
                                'https://youtu.be/FU3WPtBBXkA?si=SzYKzx9RdUDkFBsc',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: AudiovisualPoster(
                            assetPath: 'assets/images/audiovisual_3.jpg',
                            url: 'https://www.youtube.com/watch?v=SgyuzLmPJu0',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: AudiovisualPoster(
                            assetPath: 'assets/images/audiovisual_4.jpg',
                            url: 'https://youtu.be/5KKK2Mbejgc',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: AudiovisualPoster(
                            assetPath: 'assets/images/audiovisual_5.png',
                            url: 'https://www.youtube.com/watch?v=FCUSLVebt7I',
                          ),
                        ),
                        const SizedBox(height: 60),
                      ],
                    ),
                    Positioned(
                      bottom: -5,
                      right: 0,
                      left: 0,
                      height: 17,
                      child: Image(
                        image: AssetImage(
                          'assets/effects/grainy_purple_line_effect.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
