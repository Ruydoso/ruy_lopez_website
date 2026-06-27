import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/texts/custom_texts.dart';
import 'package:ruy_lopez_website/core/utils/utils.dart';

class TextLinkWidget extends StatefulWidget {
  final String text;
  final double textSize;
  final VoidCallback onTap;
  const TextLinkWidget({
    super.key,
    this.textSize = 14,
    required this.onTap,
    required this.text,
  });

  @override
  State<TextLinkWidget> createState() => _TextLinkWidgetState();
}

class _TextLinkWidgetState extends State<TextLinkWidget> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovering = true),
      onExit: (event) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          if (MediaQuery.of(context).size.width < mobileBreakPoint) {
            setState(() {
              _isHovering = true;
            });
            await Future.delayed(Durations.short2);
          }
          widget.onTap();
          setState(() {
            _isHovering = false;
          });
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _isHovering ? Color(0xFFF0B3E7) : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: RobotoText(
              text: widget.text,
              fontSize: widget.textSize,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF0B3E7),
            ),
          ),
        ),
      ),
    );
  }
}
