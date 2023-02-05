
import 'package:assigment/widgets/tab_live.dart';
import 'package:assigment/widgets/tab_my_news.dart';
import 'package:assigment/widgets/tab_popular.dart';
import 'package:assigment/widgets/tab_stories.dart';
import 'package:assigment/widgets/tab_videos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> moreTopics = [
    "World",
    "Africa",
    "Asia",
    "Australia",
    "Europe",
    "Middle East",
    "Latin America",
    "UK",
    "US & Canada",
    "Paradise Papers",
    "Business",
  ];
  @override
  Widget build(BuildContext context) {
    final TextStyle txt = TextStyle(
      fontSize: 16,
    );
    bool isExpanded = false;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          //backgroundColor: Colors.white.withOpacity(0;.9),

          appBar: AppBar(
            backgroundColor: const Color(0xFFBB1919),
            leading: const Icon(Icons.menu),
            centerTitle: true,
            title: Image.asset(
              'images/bbc.png',
              width: 140,
              height: 100,
            ),
            actions: [
              const Icon(Icons.search),
              PopupMenuButton(
                itemBuilder: (_) => [
                  const PopupMenuItem(
                    child: Text("Settings"),
                  ),
                  const PopupMenuItem(
                    child: Text("Help"),
                  ),
                  const PopupMenuItem(
                    child: Text("Contact us"),
                  ),
                  const PopupMenuItem(
                    child: Text("Other BBC apps"),
                  ),
                ],
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              indicator: UnderlineTabIndicator(
                insets: EdgeInsets.symmetric(horizontal: 10),
              ),
              tabs: [
                Tab(
                  child: Text("Top Stories", style: txt),
                ),
                Tab(
                  child: Text("Video", style: txt),
                  //text: "Hello",
                ),
                Tab(
                  child: Text("My News", style: txt),
                ),
                Tab(
                  child: Text("Popular", style: txt),
                ),
                Tab(
                  child: Text("Live", style: txt),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TabStories(),
              TabVideos(),
              TabMyNews(),
              TabPopular(),
              TabLive(),
            ],
          )),
    );
  }
}
