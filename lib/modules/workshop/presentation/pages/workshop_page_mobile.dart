part of 'workshop_page.dart';

class WorkshopPageMobile extends StatefulWidget {
  const WorkshopPageMobile({super.key});

  @override
  State<WorkshopPageMobile> createState() => _WorkshopPageMobileState();
}

class _WorkshopPageMobileState extends State<WorkshopPageMobile> {
  final GlobalKey _key = GlobalKey();

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
    return Scaffold(
      endDrawer: CustomDrawer(selectedRoute: WorkshopPage.route),
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(width: double.infinity),
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
                              'assets/images/workshop_image1_mobile.webp',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 40),
                              child: StaatlichesText(
                                text: 'WORKSHOPS',
                                fontSize: 57,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: RobotoText(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.42,
                                letterSpacing: 0.25,
                                text:
                                    'In addition to his performance career, Ruy Adrián López-Nussa is a highly sought-after educator who leads numerous workshops and masterclasses. Each year, his sessions captivate music enthusiasts—especially drummers.\n\nNotable highlights among his educational projects include the Stanford Jazz Festival and the specialized Cuban music workshops he co-hosts alongside his older brother, Harold López-Nussa.',
                              ),
                            ),
                            const SizedBox(height: 40),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RobotoText(
                                  text: 'Go down to see more',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
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
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF9C9C9A),
                            Color(0xFF696967),
                            Color(0xFF383836),
                          ],
                          stops: [0.0, 0.34, 1.0],
                          begin: AlignmentGeometry.topCenter,
                          end: AlignmentGeometry.bottomCenter,
                        ),
                      ),
                      child: Column(
                        children: [
                          SeparatorsLines(),

                          Stack(
                            alignment: AlignmentGeometry.topCenter,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Image(
                                  image: AssetImage(
                                    'assets/effects/grainy_effect3.webp',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 80,
                                      bottom: 40,
                                    ),
                                    child: RobotoText(
                                      text: 'PAST WORKSHOPS',
                                      fontSize: 32,
                                      color: Color(0xFF330833),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.75,
                                    child: Image(
                                      image: AssetImage(
                                        'assets/images/workshop_image1.webp',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      bottom: 80,
                                    ),
                                    child: SizedBox(
                                      width: 300,
                                      child: RobotoText(
                                        text:
                                            'Last workshop of Ruy Adrián and Harold López Nussa for the people interested in the cuban music.',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        height: 1.16,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Image(
                                      image: AssetImage(
                                        'assets/images/workshop_image2.webp',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      bottom: 90,
                                    ),
                                    child: SizedBox(
                                      width: 320,
                                      child: Column(
                                        children: [
                                          RobotoText(
                                            text:
                                                'Each summer, the Stanford Jazz Festival presents weeks of world-class performances. The same artists who teach in the program take the stage at night, creating a one-of-a-kind environment where audiences and students experience jazz at its highest level. Ruy Adrián participated in the year 2018',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            height: 1.16,
                                          ),
                                          const SizedBox(height: 20),
                                          Align(
                                            alignment:
                                                AlignmentGeometry.centerRight,
                                            child: MouseRegion(
                                              cursor: SystemMouseCursors.click,
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
                                                        color: Color(
                                                          0xFFF0B3E7,
                                                        ),
                                                        width: 2,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 2,
                                                    ),
                                                    child: RobotoText(
                                                      text: 'See more about it',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFFF0B3E7),
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
                            ],
                          ),
                          SeparatorsLines(),
                          TopGrainyBackgroundScreen(
                            key: _key,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 30,
                                    bottom: 40,
                                  ),
                                  child: RobotoText(
                                    text: 'CUBAN WORKSHOP',
                                    color: CustomColors.darkPurpleAppColor,
                                    fontSize: 32,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/workshop_temp.webp',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 70),
                              ],
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
          ),
        ],
      ),
    );
  }
}
