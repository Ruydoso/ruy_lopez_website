part of 'press_page.dart';

class PressPageDesktop extends StatefulWidget {
  const PressPageDesktop({super.key});

  @override
  State<PressPageDesktop> createState() => _PressPageDesktopState();
}

class _PressPageDesktopState extends State<PressPageDesktop> {
  bool reversed = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(selectedRoute: PressPage.route),
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
                        stops: [0.0, 0.43, 1.0],
                        begin: AlignmentGeometry.topCenter,
                        end: AlignmentGeometry.bottomCenter,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: Opacity(
                            opacity: 0.2,
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
                          bottom: 0,
                          child: Opacity(
                            opacity: 0.2,
                            child: Image(
                              image: AssetImage(
                                'assets/effects/grainy_effect2.webp',
                              ),
                              fit: BoxFit.cover,
                              colorBlendMode: BlendMode.multiply,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          height: 456,
                          child: Opacity(
                            opacity: 0.8,
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
                          bottom: 0,
                          right: 0,
                          height: 456,
                          child: Opacity(
                            opacity: 0.8,
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
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.08,
                            vertical: 70,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: AlignmentGeometry.centerLeft,
                                child: StaatlichesText(
                                  text: 'PRESS',
                                  fontSize: 96,
                                  letterSpacing: 0,
                                ),
                              ),
                              Align(
                                alignment: AlignmentGeometry.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () => setState(() {
                                          reversed = false;
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
                                            color: reversed
                                                ? Colors.transparent
                                                : Color(0xFFF7DAEF),
                                            border: BoxBorder.all(
                                              width: 0.5,
                                              color: Color(0xFF544151),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 5,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                reversed
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
                                          reversed = true;
                                        }),
                                        child: AnimatedContainer(
                                          width: 104,
                                          height: 40,
                                          duration: Durations.medium4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(16),
                                              bottomRight: Radius.circular(16),
                                            ),
                                            color: reversed
                                                ? Color(0xFFF7DAEF)
                                                : Colors.transparent,
                                            border: BoxBorder.all(
                                              width: 0.5,
                                              color: Color(0xFF544151),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 5,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                reversed
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
                              ),
                              const SizedBox(height: 40),
                              GridView.count(
                                crossAxisCount: width < tabletBreakPoint
                                    ? 2
                                    : 3,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                childAspectRatio: 0.75,
                                children: (reversed ? _news.reversed : _news)
                                    .map((e) => PressWidget(news: e))
                                    .toList(),
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
