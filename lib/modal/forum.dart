import 'topic.dart';

class Forum {
  final String title;
  final String imagePath;
  final String rank;
  final String threads;
  final String subs;
  final List<Topic> topics;

  Forum({this.title, this.imagePath, this.rank, this.threads, this.subs, this.topics});
}

final fortniteForum = Forum(

);

final pubgForum = Forum(
  
);

final forums = [
  fortniteForum,
  pubgForum
];