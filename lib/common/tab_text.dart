import 'package:flutter/material.dart';
import 'package:game_forum/styleguide/text_style.dart';

class TabText extends StatelessWidget {
  final isSelected;
  final String text;
  Function onTabTap;

  TabText({this.text, this.isSelected, this.onTabTap});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.58,
      child: InkWell(
        onTap: onTabTap,
        child: AnimatedDefaultTextStyle(
          style: isSelected ? selectedTabStyle : defaultTabStyle,
          duration: const Duration(milliseconds: 500),
            child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
