import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:game_forum/common/forum_card.dart';
import 'package:game_forum/common/tab_text.dart';
import 'package:game_forum/modal/forum.dart';

class HorizontalTab extends StatefulWidget {
  @override
  _HorizontalTabState createState() => _HorizontalTabState();
}

class _HorizontalTabState extends State<HorizontalTab>
    with SingleTickerProviderStateMixin {
  int selectedTabIndex = 0;
  AnimationController _controler;
  Animation<Offset> _animation;
  Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controler = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _animation = Tween<Offset>(begin: Offset(0, 0), end: Offset(-0.05, 0))
        .animate(_controler);
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controler);
  }

  playAnimation() {
    _controler.reset();
    _controler.forward();
  }

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
            width: 110.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
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
          Padding(
            padding: const EdgeInsets.only(left: 65.0),
            child: FutureBuilder(
              future: playAnimation(),
              builder: (context, snapshot) {
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _animation,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: getList(selectedTabIndex),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getList(index) {
    return [
      [
        ForumCard(forum: fortniteForum),
        ForumCard(forum: pubgForum),
        ForumCard(forum: fortniteForum),
      ],
      [
        ForumCard(forum: fortniteForum),
        ForumCard(forum: fortniteForum),
        ForumCard(forum: pubgForum)
      ],
      [
        ForumCard(forum: fortniteForum),
      ],
    ][index];
  }

  onTapTab(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }
}
