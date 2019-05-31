import 'package:flutter/material.dart';
import 'package:game_forum/common/tab_text.dart';
import 'package:game_forum/styleguide/text_style.dart';

class HorizontalTab extends StatefulWidget {
  @override
  _HorizontalTabState createState() => _HorizontalTabState();
}

class _HorizontalTabState extends State<HorizontalTab> {
  int selectedTabIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: -20,
            bottom: 0,
            top: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 48.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TabText(
                      text: "Media",
                      isSelected: selectedTabIndex == 0,
                      onTabTap: () {
                        onTapTab(0);
                      }),
                  TabText(
                      text: "Streamers",
                      isSelected: selectedTabIndex == 1,
                      onTabTap: () {
                        onTapTab(1);
                      }),
                  TabText(
                      text: "Forum",
                      isSelected: selectedTabIndex == 2,
                      onTabTap: () {
                        onTapTab(2);
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  onTapTab(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }
}
