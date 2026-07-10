part of 'home_page.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  bool _firstSectionVisible = false;
  @override
  Widget build(BuildContext context) {
    final baseTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
    );

    return Scaffold(
      body: Column(
        children: [
          FadeInFromTop(child: CustomAppBar()),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  VisibilityDetector(
                    key: Key('home_first_section_desktop'),
                    onVisibilityChanged: (info) {
                      if (info.visibleFraction > 0.6) {
                        setState(() {
                          _firstSectionVisible = true;
                        });
                      }
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image(
                            image: AssetImage(
                              'assets/images/home_image1_back_desktop.webp',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: AnimatedOpacity(
                            opacity: _firstSectionVisible ? 1.0 : 0.0,
                            duration: Durations.long4,
                            child: Image(
                              image: AssetImage(
                                'assets/images/home_image1_top_desktop.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF797977),
                          Color(0xFF696967),
                          Color(0xFF1D1D1B),
                        ],
                        stops: [0.0, 0.7, 1.0],
                        begin: AlignmentGeometry.topCenter,
                        end: AlignmentGeometry.bottomCenter,
                      ),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentGeometry.center,
                          children: [
                            SizedBox(width: double.infinity),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              top: 0,
                              child: Opacity(
                                opacity: 0.4,
                                child: Image(
                                  image: AssetImage(
                                    'assets/effects/grainy_effect1.webp',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              top: 0,
                              right: 0,
                              child: Opacity(
                                opacity: 0.4,
                                child: Image(
                                  image: AssetImage(
                                    'assets/effects/grainy_effect2.webp',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 80),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Column(
                                  children: [
                                    Text.rich(
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
                                    const SizedBox(height: 40),
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
                          ],
                        ),
                        PurpleGrainyScreenDecoration(
                          height: 750,
                          child: Column(
                            children: [
                              SeparatorsLines(),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 80,
                                  bottom: 72,
                                ),
                                child: Column(
                                  children: [
                                    RobotoText(
                                      text: 'RECENT PROJECTS',
                                      fontSize: 45,
                                      color: Color(0xFF330833),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                              ),
                              HomeCarousel(),
                              const SizedBox(height: 80),
                            ],
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
