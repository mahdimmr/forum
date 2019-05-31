import 'package:flutter/material.dart';
import 'package:game_forum/common/horizontal_tab_layout.dart';
import 'app_background.dart';

class Landingpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground(),
          Align(
            alignment: Alignment.center,
            child: HorizontalTab()
          )
        ],
      )
    );
  }
}