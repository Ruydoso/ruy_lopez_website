part of 'press_page.dart';

class PressPageMobile extends StatefulWidget {
  const PressPageMobile({super.key});

  @override
  State<PressPageMobile> createState() => _PressPageMobileState();
}

class _PressPageMobileState extends State<PressPageMobile> {
  bool _oldest = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: CustomDrawer(selectedRoute: PressPage.route),
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFC6C6C5),
                          Color(0xFF696967),
                          Color(0xFF1D1D1B),
                        ],
                        stops: [0.0, 0.13, 1.0],
                        begin: AlignmentGeometry.topCenter,
                        end: AlignmentGeometry.bottomCenter,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          child: Opacity(
                            opacity: 0.9,
                            child: Image(
                              image: AssetImage(
                                'assets/effects/top_grainy_effect_r.webp',
                              ),
                              color: Colors.white,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 50,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: AlignmentGeometry.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 40),
                                  child: StaatlichesText(
                                    text: 'PRESS',
                                    fontSize: 57,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(width: 110),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () => setState(() {
                                            _oldest = false;
                                          }),
                                          child: AnimatedContainer(
                                            width: 104,
                                            height: 40,
                                            duration: Durations.medium4,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(16),
                                                bottomLeft: Radius.circular(16),
                                              ),
                                              color: _oldest
                                                  ? Colors.transparent
                                                  : Color(0xFFF7DAEF),
                                              border: BoxBorder.all(
                                                width: 0.5,
                                                color: Color(0xFF544151),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 5,
                                                  ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  _oldest
                                                      ? const SizedBox()
                                                      : Icon(
                                                          Icons.check,
                                                          color: Color(
                                                            0xFF544151,
                                                          ),
                                                        ),
                                                  RobotoText(
                                                    text: 'Newest',
                                                    fontSize: 14,
                                                    color: Color(0xFF544151),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () => setState(() {
                                            _oldest = true;
                                          }),
                                          child: AnimatedContainer(
                                            width: 104,
                                            height: 40,
                                            duration: Durations.medium4,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(16),
                                                bottomRight: Radius.circular(
                                                  16,
                                                ),
                                              ),
                                              color: _oldest
                                                  ? Color(0xFFF7DAEF)
                                                  : Colors.transparent,
                                              border: BoxBorder.all(
                                                width: 0.5,
                                                color: Color(0xFF544151),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 5,
                                                  ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  _oldest
                                                      ? Icon(
                                                          Icons.check,
                                                          color: Color(
                                                            0xFF544151,
                                                          ),
                                                        )
                                                      : const SizedBox(),
                                                  RobotoText(
                                                    text: 'Oldest',
                                                    fontSize: 14,
                                                    color: Color(0xFF544151),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ...(_oldest ? _oldNews : _news).map(
                                    (n) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 28.0,
                                      ),
                                      child: SizedBox(
                                        height: width < 350
                                            ? width * 1.25
                                            : 450,
                                        width: width < 330 ? width : 330,
                                        child: PressWidget(news: n),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
