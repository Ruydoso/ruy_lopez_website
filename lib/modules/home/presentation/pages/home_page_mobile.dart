part of 'home_page.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  bool firstSectionVisible = false;
  bool secondSectionVisible = false;

  final baseTextStyle = TextStyle(
    fontFamily: 'Roboto',
    color: Colors.white,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFC7C4C4),
      endDrawer: CustomDrawer(selectedRoute: HomePage.route),
      body: Column(
        children: [
          FadeInFromTop(child: CustomAppBar()),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      VisibilityDetector(
                        key: Key('image1'),
                        onVisibilityChanged: (info) {
                          if (info.visibleFraction > 0.4) {
                            setState(() {
                              firstSectionVisible = true;
                            });
                          }
                        },
                        child: SizedBox(
                          width: double.infinity,
                          child: Image(
                            image: AssetImage(
                              width < 500
                                  ? 'assets/images/home_image1_mobile.webp'
                                  : 'assets/images/home_image1_desktop.webp',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      if (width < 500)
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: AnimatedOpacity(
                            opacity: firstSectionVisible ? 1.0 : 0.0,
                            duration: Durations.medium4,
                            child: Image(
                              image: AssetImage(
                                'assets/images/home_image1top_mobile.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                    ],
                  ),
                  DecoratedBox(
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
                    child: Column(
                      children: [
                        GrainyBackgroundScreen(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 28.0,
                              vertical: 60,
                            ),
                            child: Column(
                              children: [
                                VisibilityDetector(
                                  key: Key('section_2'),
                                  onVisibilityChanged: (info) {
                                    if (info.visibleFraction > 0.4) {
                                      setState(() {
                                        secondSectionVisible = true;
                                      });
                                    }
                                  },
                                  child: AnimatedOpacity(
                                    opacity: secondSectionVisible ? 1.0 : 0.0,
                                    duration: Durations.medium4,
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Ruy Adrián López-Nussa ',
                                            style: baseTextStyle.copyWith(
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'is a distinguished Cuban artist recognized globally as a ',
                                            style: baseTextStyle,
                                          ),
                                          TextSpan(
                                            text:
                                                'virtuoso drummer and composer.\n\n',
                                            style: baseTextStyle.copyWith(
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "Born into one of Cuba's most influential musical families, he is a leading force in Latin Jazz, known for his rhythmic complexity and powerful international collaborations. Beyond the stage, he excels in film and media scoring, creating emotive compositions that merge orchestral and Latin textures. His compositional talent was officially recognized in 2021 when he secured the top award at the ",
                                            style: baseTextStyle,
                                          ),
                                          TextSpan(
                                            text:
                                                "IV SGAE 'Tete Montoliu' Jazz Composition Competition.\n\n",
                                            style: baseTextStyle.copyWith(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'López-Nussa remains an innovative presence, driving both the jazz and cinematic music industries forward.',
                                            style: baseTextStyle.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Align(
                                  alignment: AlignmentGeometry.centerRight,
                                  child: CustomTextButton(
                                    text: 'See More',
                                    onTap: () {
                                      Navigator.pushNamed(context, '/bio');
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SeparatorsLines(),
                        const SizedBox(height: 50),
                        RobotoText(
                          text: 'RECENT PROJECTS',
                          fontSize: 32,
                          color: Color(0xFF330833),
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(height: 40),
                        HomeCarousel(),
                        SizedBox(
                          width: double.infinity,
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
