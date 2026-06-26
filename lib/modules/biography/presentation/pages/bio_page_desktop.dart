part of 'bio_page.dart';

class BioPageDesktop extends StatelessWidget {
  const BioPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF434342),
      body: Column(
        children: [
          CustomAppBar(selectedRoute: BioPage.route),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          const SizedBox(width: double.infinity),
                          Positioned.fill(
                            child: Image(
                              image: AssetImage(
                                'assets/images/bio_image1_desktop.webp',
                              ),
                              fit: BoxFit.cover,
                              color: Colors.black.withValues(alpha: 0.5),
                              colorBlendMode: BlendMode.multiply,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 40,
                                    ),
                                    child: StaatlichesText(
                                      text: 'BIOGRAPHY',
                                      fontSize: 96,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                  AnimatedTexts(
                                    texts: RobotoText(
                                      text:
                                          'Ruy Adrián López Nussa: Master Drummer, Versatile Composer, and Global Performer',
                                      color: CustomColors.textLightPinkColor,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  AnimatedTexts(
                                    texts: RobotoText(
                                      text:
                                          'Ruy Adrián López Nussa is centera highly acclaimed Cuban musician, celebrated internationally for his dynamic and versatile career as both a drummer and composer. Hailing from one of Cuba\'s most distinguished musical families, he inherited a deep and sophisticated musical language that seamlessly blends Cuban rhythms, jazz, and classical influences.',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0,
                                      height: 1.32,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 40,
                                    ),
                                    child: AnimatedTexts(
                                      texts: RobotoText(
                                        text:
                                            'Foundational Education in Percussion and Piano',
                                        color: CustomColors.textLightPinkColor,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  AnimatedTexts(
                                    texts: RobotoText(
                                      text:
                                          'López Nussa\'s comprehensive musical foundation is rooted in his academic training. He pursued a dual major in Percussion and Piano, an intensive study that provided him with a profound understanding of both rhythmic complexity and harmonic structure. This unique combination of instrumental mastery has been crucial in shaping his advanced skill set as a composer.',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0,
                                      height: 1.32,
                                    ),
                                  ),
                                  const SizedBox(height: 80),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(color: Color(0xFF434342)),
                        child: GrainyBackgroundScreen(
                          child: Column(
                            children: [
                              SeparatorsLines(inverted: true),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 70,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.35,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AnimatedTexts(
                                            texts: RobotoText(
                                              text:
                                                  'Career Highlights as a Drummer\nand Global Performer',
                                              fontWeight: FontWeight.w400,
                                              color: CustomColors
                                                  .textLightPinkColor,
                                            ),
                                          ),
                                          const SizedBox(height: 30),
                                          AnimatedTexts(
                                            texts: RobotoText(
                                              text:
                                                  'As a drummer, Ruy Adrián is recognized for his technical mastery, nuanced approach, and deep understanding of Afro-Cuban traditions. He has become a sought-after collaborator for some of the biggest names in contemporary Cuban and international music, showcasing his ability to navigate diverse genres. His international recognition is evidenced by his performances at the world\'s most important jazz festivals (including major stages across Europe, U.S.A, and Asia), solidifying his reputation as a key figure in the global drumming community.',
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0,
                                              height: 1.22,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxHeight: 640,
                                      ),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.35,
                                        child: Image(
                                          image: AssetImage(
                                            'assets/images/bio_image2_desktop.webp',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          const SizedBox(height: 1120),
                          Positioned(
                            left: 0,
                            height: 700,
                            child: Image(
                              image: AssetImage(
                                'assets/effects/purple_grainy_effect_l.webp',
                              ),
                              fit: BoxFit.cover,
                              colorBlendMode: BlendMode.multiply,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            height: 700,
                            child: Image(
                              image: AssetImage(
                                'assets/effects/purple_grainy_effect_r.webp',
                              ),
                              fit: BoxFit.cover,
                              colorBlendMode: BlendMode.multiply,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(maxHeight: 580),
                              child: SizedBox(
                                width: double.infinity,
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/bio_image3_desktop.webp',
                                  ),
                                  fit: BoxFit.cover,
                                ),
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
                          Column(
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.black.withValues(alpha: 0.5),
                                ),
                                child: Column(
                                  children: [
                                    SeparatorsLines(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 70,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                0.35,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AnimatedTexts(
                                                  texts: RobotoText(
                                                    text:
                                                        'The Composer\'s Voice and Film Scoring',
                                                    fontWeight: FontWeight.w400,
                                                    color: CustomColors
                                                        .textLightPinkColor,
                                                    letterSpacing: 0,
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                AnimatedTexts(
                                                  texts: RobotoText(
                                                    text:
                                                        'Beyond the drum kit, López Nussa has stepped into the realm of composition. His compositional versatility extends to the screen, as he also creates compelling scores and compositions for cinema, demonstrating his ability to adapt his unique sound and emotional depth to narrative storytelling.',
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 0,
                                                    height: 1.22,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                0.35,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AnimatedTexts(
                                                  texts: RobotoText(
                                                    text:
                                                        'SGAE Composition Award 2021',
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 0,
                                                    color: CustomColors
                                                        .textLightPinkColor,
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                AnimatedTexts(
                                                  texts: RobotoText(
                                                    text:
                                                        ' A significant milestone in his compositional career was winning the 2021 SGAE Award for Composition (Premio SGAE de Composición) in Spain. This prestigious recognition highlighted the brilliance and originality of his work. Ruy Adrián López Nussa continues to captivate audiences worldwide, proving his versatility and talent through his powerful presence on the drums, his compositions and his solid foundation as a comprehensively trained musician.',
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 0,
                                                    height: 1.22,
                                                  ),
                                                ),
                                                const SizedBox(height: 30),
                                                Center(
                                                  child: MouseRegion(
                                                    cursor: SystemMouseCursors
                                                        .click,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        launchUrl(
                                                          Uri.parse(
                                                            'https://drive.google.com/file/d/1VG9HrD0inmlhM1MKwL1aJis0nMNi9L7N/view?usp=drivesdk',
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                18,
                                                              ),
                                                          border: BoxBorder.all(
                                                            color: CustomColors
                                                                .textLightPinkColor,
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        width: 150,
                                                        height: 50,
                                                        child: Center(
                                                          child: RobotoText(
                                                            text:
                                                                'Download dossier',
                                                            fontSize: 16,
                                                            color: CustomColors
                                                                .textLightPinkColor,
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withValues(alpha: 0.5),
                                      Colors.transparent,
                                    ],
                                    begin: AlignmentGeometry.topCenter,
                                    end: AlignmentGeometry.bottomCenter,
                                  ),
                                ),
                                child: SizedBox(
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                            ],
                          ),
                        ],
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
