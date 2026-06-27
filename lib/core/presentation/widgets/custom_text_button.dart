import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/texts/custom_texts.dart';
import 'package:ruy_lopez_website/core/presentation/themes/colors.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';

class CustomTextButton extends StatefulWidget {
  final String text;
  final double width;
  final VoidCallback onTap;
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width = 120,
  });

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
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
        child: Container(
          decoration: BoxDecoration(
            color: _isHovering
                ? CustomColors.textLightPinkColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(18),
            border: BoxBorder.all(
              color: CustomColors.textLightPinkColor,
              width: 2.0,
            ),
          ),
          width: widget.width,
          height: 56,
          child: Center(
            child: RobotoText(
              text: widget.text,
              fontSize: 16,
              fontWeight: _isHovering ? FontWeight.w600 : FontWeight.w500,
              color: _isHovering
                  ? Color(0xFF330833)
                  : CustomColors.textLightPinkColor,
              letterSpacing: 0,
            ),
          ),
        ),
      ),
    );
  }
}
