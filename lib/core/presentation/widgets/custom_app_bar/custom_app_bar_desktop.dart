part of 'custom_app_bar.dart';

const _purpleLigthColor = Color(0xFFE2DFFF);

class CustomAppBarDesktop extends StatelessWidget {
  final String selectedRoute;
  const CustomAppBarDesktop({super.key, required this.selectedRoute});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 95,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width < tabletBreakPoint ? 10 : 40,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/logos/ruy_logo.svg',
                width: width < tabletBreakPoint ? 220 : 400,
              ),
              SizedBox(width: width < tabletBreakPoint ? 20 : 0),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _AppBarNavigationElement(
                      text: 'HOME',
                      onTap: () {},
                      active: selectedRoute == '/',
                    ),
                    _AppBarNavigationElement(
                      text: 'DISCOGRAPHY',
                      onTap: () {
                        Navigator.pushNamed(context, '/discography');
                      },
                      active: selectedRoute == '/discography',
                    ),
                    _AppBarNavigationElement(
                      text: 'MEDIA',
                      onTap: () {
                        Navigator.pushNamed(context, '/media');
                      },
                      active: selectedRoute == '/media',
                    ),
                    _AppBarNavigationElement(
                      text: 'WORKSHOP',
                      onTap: () {
                        Navigator.pushNamed(context, '/workshop');
                      },
                      active: selectedRoute == '/workshop',
                    ),
                    _AppBarNavigationElement(
                      text: 'PRESS',
                      onTap: () {
                        Navigator.pushNamed(context, '/press');
                      },
                      active: selectedRoute == '/press',
                    ),
                    _AppBarNavigationElement(
                      text: 'BIO',
                      onTap: () {
                        Navigator.pushNamed(context, '/bio');
                      },
                      active: selectedRoute == '/bio',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBarNavigationElement extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool active;

  const _AppBarNavigationElement({
    required this.text,
    required this.onTap,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: active ? _purpleLigthColor : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: RobotoText(
              text: text,
              color: Color(0xFF4E444B),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
