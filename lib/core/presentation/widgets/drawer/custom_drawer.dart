import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/texts/custom_texts.dart';

const _purpleLigthColor = Color(0xFFE2DFFF);

class CustomDrawer extends StatelessWidget {
  final String selectedRoute;
  const CustomDrawer({super.key, this.selectedRoute = '/'});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: 190,
        height: 455,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: StaatlichesText(
                text: 'MENU',
                fontSize: 36,
                color: Color(0xFF4E444B),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _DrawerNavigationElement(
                  text: 'Home',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  active: selectedRoute == '/',
                ),
                _DrawerNavigationElement(
                  text: 'Discography ',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/discography');
                  },
                  active: selectedRoute == '/discography',
                ),
                _DrawerNavigationElement(
                  text: 'Media',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/media');
                  },
                  active: selectedRoute == '/media',
                ),
                _DrawerNavigationElement(
                  text: 'Workshop',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/workshop');
                  },
                  active: selectedRoute == '/workshop',
                ),
                _DrawerNavigationElement(
                  text: 'Press',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/press');
                  },
                  active: selectedRoute == '/press',
                ),
                _DrawerNavigationElement(
                  text: 'Biography',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/bio');
                  },
                  active: selectedRoute == '/bio',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerNavigationElement extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool active;

  const _DrawerNavigationElement({
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
          child: SizedBox(
            width: 165,
            height: 56,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(text),
            ),
          ),
        ),
      ),
    );
  }
}
