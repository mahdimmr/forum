import 'package:flutter/material.dart';
import 'package:game_forum/modal/forum.dart';
import 'package:game_forum/common/forum_name_widget.dart';

class ForumCard extends StatelessWidget {
  final Forum forum;

  ForumCard({this.forum});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.0,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 60.0),
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(
                forum.imagePath,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                left: 0,
                bottom: 70.0,
                child: ForumNameWidget(forum: forum)),
            ],
          ),
        ),
      ),
    );
  }
}
