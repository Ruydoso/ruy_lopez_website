part of 'home_page.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/home_image1_desktop.png'),
                fit: BoxFit.cover,
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
                  stops: [0.0, 0.2, 1.0],
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
                              'assets/effects/grainy_effect1.png',
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
                              'assets/effects/grainy_effect2.png',
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
                                          'virtuoso drummer and a composer.\n\n',
                                      style: baseTextStyle.copyWith(
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "Born into one of Cuba's most influential musical families, he is a leading force in Latin Jazz, known for his rhythmic, complexity and powerful international collaborations. Beyond the stage, he excels in film and media scoring, creating emotive compositions that merge orchestral and Latin textures. His compositional talent was officially recognized in 2021 when he secured the top award at the ",
                                      style: baseTextStyle,
                                    ),
                                    TextSpan(
                                      text:
                                          "IV SGAE 'Tete Montoliu' Jazz Composition Competition in 2021 ",
                                      style: baseTextStyle.copyWith(
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'sponsored by SGAE.\n\n',
                                      style: baseTextStyle,
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
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        border: BoxBorder.all(
                                          color:
                                              CustomColors.textLightPinkColor,
                                          width: 2.0,
                                        ),
                                      ),
                                      width: 120,
                                      height: 56,
                                      child: Center(
                                        child: RobotoText(
                                          text: 'See More',
                                          fontSize: 16,
                                          color:
                                              CustomColors.textLightPinkColor,
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                  ),
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
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          child: Column(
                            children: [
                              RobotoText(
                                text: 'RECENT PROJECTS',
                                fontSize: 45,
                                color: Color(0xFF330833),
                              ),
                              const SizedBox(height: 40),
                              HomeCarousel(),
                            ],
                          ),
                        ),
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
    );
  }
}
