part of 'bio_page.dart';

class BioPageMobile extends StatelessWidget {
  const BioPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(selectedRoute: BioPage.route),
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      const SizedBox(width: double.infinity),
                      Positioned.fill(
                        child: Image(
                          image: AssetImage(
                            'assets/images/bio_image1_mobile.webp',
                          ),
                          fit: BoxFit.cover,
                          color: Colors.black.withValues(alpha: 0.5),
                          colorBlendMode: BlendMode.multiply,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 50),
                              child: StaatlichesText(
                                text: 'BIOGRAPHY',
                                fontSize: 57,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.65,
                              child: AnimatedTexts(
                                texts: RobotoText(
                                  text:
                                      'Ruy A. López Nussa: Master Drummer, Versatile Composer, and Global Performer',
                                  fontSize: 22,
                                  color: CustomColors.textLightPinkColor,
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 430),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.80,
                                child: AnimatedTexts(
                                  texts: RobotoText(
                                    text:
                                        'Ruy Adrián López Nussa is a highly acclaimed Cuban musician, celebrated internationally for his dynamic and versatile career as a drummer and also as a composer. Hailing from one of Cuba\'s most distinguished musical families, he inherited a deep and sophisticated musical language that seamlessly blends Cuban rhythms, jazz, and classical influences.',
                                    fontSize: 16,
                                    height: 1.72,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned.fill(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF9B9B99),
                                Color(0xFF696967),
                                Color(0xFF464644),
                              ],
                              stops: [0.0, 0.56, 1.0],
                              begin: AlignmentGeometry.topCenter,
                              end: AlignmentGeometry.bottomCenter,
                            ),
                          ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.black.withValues(alpha: 0.5),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 10,
                        right: 0,
                        left: 0,
                        child: Image(
                          image: AssetImage(
                            'assets/images/bio_image3_mobile.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: -5,
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
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            SeparatorsLines(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 50,
                                      bottom: 30,
                                    ),
                                    child: AnimatedTexts(
                                      texts: RobotoText(
                                        text:
                                            'Foundational Education in\nPercussion and Piano',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFFADEF4),
                                      ),
                                    ),
                                  ),
                                  AnimatedTexts(
                                    texts: RobotoText(
                                      text:
                                          'López Nussa\'s comprehensive musical foundation is rooted in his academic training. He pursued a dual major in Percussion and Piano, an intensive study that provided him with a profound understanding of both rhythmic complexity and harmonic structure. This unique combination of instrumental mastery has been crucial in shaping his advanced skill set as a composer.',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.25,
                                      color: Color(0xFFFFF9EF),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 50,
                                      bottom: 30,
                                    ),
                                    child: AnimatedTexts(
                                      texts: RobotoText(
                                        text:
                                            'Career Highlights as a Drummer and Global Performer',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFFADEF4),
                                      ),
                                    ),
                                  ),
                                  AnimatedTexts(
                                    texts: RobotoText(
                                      text:
                                          'As a drummer, Ruy Adrián is recognized for his technical mastery, nuanced approach, and deep understanding of Afro-Cuban traditions. He has become a sought-after collaborator for some of the biggest names in contemporary Cuban and international music, showcasing his ability to navigate diverse genres. His international recognition is evidenced by his performances at the world\'s most important jazz festivals (including major stages across Europe, U.S.A, and Asia), solidifying his reputation as a key figure in the global drumming community',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.25,
                                      color: Color(0xFFFFF9EF),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 50,
                                      bottom: 30,
                                    ),
                                    child: AnimatedTexts(
                                      texts: RobotoText(
                                        text:
                                            'The Composer\'s Voice and Film Scoring',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFFADEF4),
                                      ),
                                    ),
                                  ),
                                  AnimatedTexts(
                                    texts: RobotoText(
                                      text:
                                          'Beyond the drum kit, López Nussa has stepped into the realm of composition. His compositional versatility extends to the screen, as he also creates compelling scores and compositions for cinema, demonstrating his ability to adapt his unique sound and emotional depth to narrative storytelling.',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.25,
                                      color: Color(0xFFFFF9EF),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 50,
                                      bottom: 30,
                                    ),
                                    child: AnimatedTexts(
                                      texts: RobotoText(
                                        text: 'SGAE Composition Award 2021',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFFADEF4),
                                      ),
                                    ),
                                  ),
                                  AnimatedTexts(
                                    texts: RobotoText(
                                      text:
                                          'A significant milestone in his compositional career was winning the 2021 SGAE Award for Composition (Premio SGAE de Composición) in Spain. This prestigious recognition highlighted the brilliance and originality of his work. Ruy Adrián López Nussa continues to captivate audiences worldwide, proving his versatility and talent through his powerful presence on the drums, his compositions and his solid foundation as a comprehensively trained musician.',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.25,
                                      color: Color(0xFFFFF9EF),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentGeometry.centerRight,
                                    child: Padding(
                                      padding: EdgeInsetsGeometry.symmetric(
                                        vertical: 40,
                                        horizontal: 30,
                                      ),
                                      child: CustomTextButton(
                                        width: 150,
                                        text: 'Download dossier',
                                        onTap: () {
                                          launchUrl(
                                            Uri.parse(
                                              'https://drive.google.com/file/d/1VG9HrD0inmlhM1MKwL1aJis0nMNi9L7N/view?usp=drivesdk',
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.5,
                            ),
                          ],
                        ),
                      ),
                    ],
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
