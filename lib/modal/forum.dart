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
    title: "Fortnite",
    imagePath: "assets/fortnite.jpg",
    rank: "32",
    subs: "500+",
    threads: "120",
    topics: fortniteTopics
);

final pubgForum = Forum(
    title: "PUBG",
    imagePath: "assets/pubg.jpg",
    rank: "25",
    subs: "500+",
    threads: "88",
    topics: pubgTopics
);

final forums = [
  fortniteForum,
  pubgForum
];