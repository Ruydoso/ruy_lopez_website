import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/collaboration.dart';

class CollaborationWidget extends StatefulWidget {
  final Collaboration collaboration;
  const CollaborationWidget({super.key, required this.collaboration});

  @override
  State<CollaborationWidget> createState() => _CollaborationWidgetState();
}

class _CollaborationWidgetState extends State<CollaborationWidget> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) => setState(() {
            _isHovering = true;
          }),
          onExit: (event) => setState(() {
            _isHovering = false;
          }),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: GestureDetector(
              onTap: () async {
                if (MediaQuery.of(context).size.width < mobileBreakPoint) {
                  setState(() {
                    _isHovering = true;
                  });
                  await Future.delayed(Durations.short2);
                }
                launchUrl(Uri.parse(widget.collaboration.link));
                setState(() {
                  _isHovering = false;
                });
              },
              child: SizedBox(
                width: 160,
                height: 160,
                child: ClipRect(
                  child: AnimatedScale(
                    scale: _isHovering ? 1.2 : 1.0,
                    duration: Durations.long1,
                    child: DecoratedBox(
                      position: DecorationPosition.foreground,
                      decoration: BoxDecoration(
                        color: _isHovering
                            ? Color(0x997F4D7B)
                            : Colors.transparent,
                      ),
                      child: Image(
                        image: AssetImage(widget.collaboration.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        RobotoText(
          text: '${widget.collaboration.year}',
          fontSize: 18,
          letterSpacing: 0.8,
        ),
      ],
    );
  }
}
