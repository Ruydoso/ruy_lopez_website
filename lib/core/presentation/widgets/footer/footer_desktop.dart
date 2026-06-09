part of 'footer.dart';

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 420,
      child: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 420,
            child: Image(
              image: AssetImage(
                'assets/effects/footer_grainy_effect_desktop.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 50,
              left: MediaQuery.of(context).size.width * 0.05,
              bottom: 50,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RobotoCondensedText(
                      text: 'FOLLOW',
                      fontSize: 96,
                      fontWeight: FontWeight.w600,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: MediaQuery.of(context).size.width * 0.07,
                      children: [
                        SocialNetworkIcon(
                          link:
                              'https://www.instagram.com/ruydosonussa?igsh=MXRxMHpreDFrcHVtMQ==',
                          iconPath: 'assets/icons/ig.svg',
                          onHoverIconPath: 'assets/icons/ig_hover.svg',
                        ),
                        SocialNetworkIcon(
                          link:
                              'https://www.linkedin.com/in/ruy-adrian-lopez-nussa-891a36a5?originalSubdomain=fr',
                          iconPath: 'assets/icons/linkedin.svg',
                          onHoverIconPath: 'assets/icons/linkedin_hover.svg',
                        ),
                        SocialNetworkIcon(
                          link: 'https://www.facebook.com/share/17ngtRKKRg/',
                          iconPath: 'assets/icons/facebook.svg',
                          onHoverIconPath: 'assets/icons/facebook_hover.svg',
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 50),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RobotoCondensedText(
                        text: 'CONTACT',
                        fontSize: 96,
                        fontWeight: FontWeight.w600,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(color: Color(0xB0B5A7B0)),
                        child: GestureDetector(
                          onTap: () {
                            launchUrl(
                              Uri(
                                scheme: 'mailto',
                                path: 'ruydosonussa@gmail.com',
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 28,
                              top: 28,
                              bottom: 28,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.mail_outline_rounded,
                                  color: Colors.white,
                                  size: 60,
                                ),
                                const SizedBox(width: 30),
                                SizedBox(
                                  width: 380,
                                  child: RobotoText(
                                    text: 'ruydosonussa@gmail.com',
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
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
          Positioned(
            top: 80,
            right: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.12,
              child: Image(
                image: AssetImage('assets/images/footer_pink_pattern.png'),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Color(0xB0B5A7B0)),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(child: SizedBox()),
                    RobotoText(
                      text: '© Ruy A. Lopez Nussa 2026. All rights reserved.',
                      fontSize: 22,
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentGeometry.centerEnd,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: RobotoText(
                            text: 'Designed by m@u',
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
