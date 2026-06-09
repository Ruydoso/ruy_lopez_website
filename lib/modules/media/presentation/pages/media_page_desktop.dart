part of 'media_page.dart';

class MediaPageDesktop extends StatelessWidget {
  const MediaPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(selectedRoute: MediaPage.route),
            Stack(
              children: [
                const SizedBox(width: double.infinity),
                Positioned.fill(
                  child: Image(
                    image: AssetImage('assets/images/media_image1_desktop.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.10,
                    top: 100,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StaatlichesText(
                        text: 'COMPOSER FOR\nFILMS AND MEDIA',
                        fontSize: 66,
                        textAlign: TextAlign.start,
                        letterSpacing: 0,
                      ),
                      const SizedBox(height: 60),
                      InteractiveMusicPlayer(),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFC6C6C5),
                    Color(0xFF696967),
                    Color(0xFF1D1D1B),
                  ],
                  stops: [0.0, 0.43, 1.0],
                ),
              ),
              child: PurpleGrainyScreenDecoration(
                height: 1400,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: RobotoText(
                        text: 'AUDIOVISUAL\'S MUSIC',
                        color: CustomColors.darkPurpleAppColor,
                        fontSize: 45,
                      ),
                    ),
                    MediaQuery.of(context).size.width < tabletBreakPoint
                        ? Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 40,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      AudiovisualPoster(
                                        assetPath:
                                            'assets/images/audiovisual_1.jpg',
                                        url:
                                            'https://youtu.be/Wt2gaVmu0eQ?si=WgOGE3p3BxfZ5zmf',
                                      ),
                                      AudiovisualPoster(
                                        assetPath:
                                            'assets/images/audiovisual_2.png',
                                        url:
                                            'https://youtu.be/FU3WPtBBXkA?si=SzYKzx9RdUDkFBsc',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 40,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      AudiovisualPoster(
                                        assetPath:
                                            'assets/images/audiovisual_3.jpg',
                                        url:
                                            'https://www.youtube.com/watch?v=SgyuzLmPJu0',
                                      ),
                                      AudiovisualPoster(
                                        assetPath:
                                            'assets/images/audiovisual_4.jpg',
                                        url: 'https://youtu.be/5KKK2Mbejgc',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 40,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      AudiovisualPoster(
                                        assetPath:
                                            'assets/images/audiovisual_5.png',
                                        url:
                                            'https://www.youtube.com/watch?v=FCUSLVebt7I',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 40,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      AudiovisualPoster(
                                        assetPath:
                                            'assets/images/audiovisual_1.jpg',
                                        url:
                                            'https://youtu.be/Wt2gaVmu0eQ?si=WgOGE3p3BxfZ5zmf',
                                      ),
                                      AudiovisualPoster(
                                        assetPath:
                                            'assets/images/audiovisual_2.png',
                                        url:
                                            'https://youtu.be/FU3WPtBBXkA?si=SzYKzx9RdUDkFBsc',
                                      ),
                                      AudiovisualPoster(
                                        assetPath:
                                            'assets/images/audiovisual_3.jpg',
                                        url:
                                            'https://www.youtube.com/watch?v=SgyuzLmPJu0',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 150,
                                    vertical: 40,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      AudiovisualPoster(
                                        assetPath:
                                            'assets/images/audiovisual_4.jpg',
                                        url: 'https://youtu.be/5KKK2Mbejgc',
                                      ),
                                      AudiovisualPoster(
                                        assetPath:
                                            'assets/images/audiovisual_5.png',
                                        url:
                                            'https://www.youtube.com/watch?v=FCUSLVebt7I',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                    const SizedBox(height: 50),
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
