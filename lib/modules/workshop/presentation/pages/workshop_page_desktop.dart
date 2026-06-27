part of 'workshop_page.dart';

class WorkshopPageDesktop extends StatefulWidget {
  const WorkshopPageDesktop({super.key});

  @override
  State<WorkshopPageDesktop> createState() => _WorkshopPageDesktopState();
}

class _WorkshopPageDesktopState extends State<WorkshopPageDesktop> {
  final GlobalKey _key = GlobalKey();
  bool linkHover = false;

  void _scroolToTarget() {
    if (_key.currentContext != null) {
      Scrollable.ensureVisible(
        _key.currentContext!,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(selectedRoute: WorkshopPage.route),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Positioned.fill(
                        child: DecoratedBox(
                          position: DecorationPosition.foreground,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withValues(alpha: 0.3),
                                Colors.black.withValues(alpha: 0.3),
                                Colors.transparent,
                              ],
                              stops: [0.0, 0.8, 1.0],
                              begin: AlignmentGeometry.centerLeft,
                              end: AlignmentGeometry.centerRight,
                            ),
                          ),
                          child: Image(
                            image: AssetImage(
                              'assets/images/workshop_image1_desktop.webp',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 150,
                          top: 60,
                          bottom: 100,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StaatlichesText(
                              text: 'WORKSHOPS',
                              fontSize: 96,
                              letterSpacing: 0,
                            ),
                            const SizedBox(height: 60),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: width > desktopBreakpoint
                                    ? width * 0.3
                                    : width * 0.5,
                              ),
                              child: RobotoText(
                                text:
                                    'In addition to his performance career, Ruy Adrián López-Nussa is a highly sought-after educator who leads numerous workshops and masterclasses. Each year, his sessions captivate music enthusiasts especially drummers.\n\nNotable highlights among his educational projects include the Stanford Jazz Festival and the specialized Cuban music workshops he co-hosts alongside his older brother, Harold López-Nussa.',
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.start,
                                letterSpacing: 0,
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RobotoText(text: 'Go down to see more'),
                                Padding(
                                  padding: EdgeInsetsGeometry.symmetric(
                                    horizontal: 12,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/down_icon.svg',
                                  ),
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      _scroolToTarget();
                                    },
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Color(0xFFF0B3E7),
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 2),
                                        child: RobotoText(
                                          text: 'Workshops availables',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF0B3E7),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  DecoratedBox(
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
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentGeometry.bottomCenter,
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              bottom: 0,
                              child: Opacity(
                                opacity: 0.4,
                                child: Image(
                                  image: AssetImage(
                                    'assets/effects/grainy_effect1.webp',
                                  ),
                                  fit: BoxFit.cover,
                                  colorBlendMode: BlendMode.multiply,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Opacity(
                                opacity: 0.4,
                                child: Image(
                                  image: AssetImage(
                                    'assets/effects/grainy_effect2.webp',
                                  ),
                                  fit: BoxFit.cover,
                                  colorBlendMode: BlendMode.multiply,
                                ),
                              ),
                            ),
                            SeparatorsLines(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 100),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 50,
                                    ),
                                    child: RobotoText(
                                      text: 'REFERENCES',
                                      fontSize: 45,
                                      color: CustomColors.darkPurpleAppColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              0.2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                  'assets/images/workshop_image1.webp',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              const SizedBox(height: 30),
                                              RobotoText(
                                                text:
                                                    'Last workshop of Ruy Adrián and Harold López Nussa for the people interested in the cuban music.',
                                                fontSize: 16,
                                                height: 1.40,
                                                fontWeight: FontWeight.w400,
                                                textAlign: TextAlign.start,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              0.4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                  'assets/images/workshop_image2.webp',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              const SizedBox(height: 30),
                                              RobotoText(
                                                text:
                                                    'Each summer, the Stanford Jazz Festival presents weeks of world-class performances. The same artists who teach in the program take the stage at night, creating a one-of-a-kind environment where audiences and students experience jazz at its highest level. Ruy Adrián participated in the year 2018.',
                                                fontSize: 16,
                                                height: 1.40,
                                                fontWeight: FontWeight.w400,
                                                textAlign: TextAlign.start,
                                              ),
                                              const SizedBox(height: 8),
                                              Align(
                                                alignment: AlignmentGeometry
                                                    .centerRight,
                                                child: MouseRegion(
                                                  onEnter: (event) => setState(
                                                    () => linkHover = true,
                                                  ),
                                                  onExit: (event) => setState(
                                                    () => linkHover = false,
                                                  ),
                                                  cursor:
                                                      SystemMouseCursors.click,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      launchUrl(
                                                        Uri.parse(
                                                          'https://stanfordjazz.org/stanford-jazz-festival/',
                                                        ),
                                                      );
                                                    },
                                                    child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                            color: linkHover
                                                                ? Color(
                                                                    0xFFF0B3E7,
                                                                  )
                                                                : Colors
                                                                      .transparent,
                                                            width: 2,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              bottom: 2,
                                                            ),
                                                        child: RobotoText(
                                                          text:
                                                              'See more about it',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color(
                                                            0xFFF0B3E7,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                bottom: 0,
                                height: 600,
                                child: Opacity(
                                  opacity: 0.75,
                                  child: Image(
                                    image: AssetImage(
                                      'assets/effects/purple_grainy_effect_l.webp',
                                    ),
                                    fit: BoxFit.cover,
                                    colorBlendMode: BlendMode.multiply,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                height: 600,
                                bottom: 0,
                                child: Opacity(
                                  opacity: 0.75,
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
                              TopGrainyBackgroundScreen(
                                key: _key,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 70,
                                      ),
                                      child: RobotoText(
                                        text: 'CUBAN WORKSHOP AVAILABLES',
                                        color: CustomColors.darkPurpleAppColor,
                                        fontSize: 45,
                                      ),
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image(
                                        image: AssetImage(
                                          'assets/images/workshop_temp.webp',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 70),
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
          ),
        ],
      ),
    );
  }
}
