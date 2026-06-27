part of 'footer.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 544,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: 544,
            width: double.infinity,
            child: Image(
              image: AssetImage(
                'assets/effects/footer_grainy_effect_mobile.webp',
              ),
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RobotoCondensedText(
                      text: 'FOLLOW',
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: MediaQuery.of(context).size.width * 0.12,
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
                    const SizedBox(height: 60),
                    RobotoCondensedText(
                      text: 'CONTACT',
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(color: Color(0x1EFFFFFF)),
                child: GestureDetector(
                  onTap: () {
                    launchUrl(
                      Uri(scheme: 'mailto', path: 'ruydosonussa@gmail.com'),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 28,
                      bottom: 28,
                      left: 30,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mail_outline_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                        const SizedBox(width: 40),

                        RobotoText(
                          text: 'ruydosonussa@gmail.com',
                          fontSize: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 200,
            child: SizedBox(
              height: 92,
              width: 92,
              child: Image(
                image: AssetImage('assets/images/footer_pink_pattern.png'),
                fit: BoxFit.cover,
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
                child: Center(
                  child: RobotoText(
                    text: '© Ruy A. López Nussa 2026. All rights reserved.',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
