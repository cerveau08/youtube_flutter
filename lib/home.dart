import 'package:flutter/material.dart';
import 'package:youtube_flutter/reusable/youtube.dart';
import 'package:youtube_flutter/subscription.dart';
import 'package:youtube_flutter/trending.dart';

class Youtube extends StatefulWidget {
  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    YoutubeBody(),
    Trending(),
    Subscription(),
    Container(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/logo.png'),
          ),
          elevation: 0.5,
          title: Text(
            'Youtube',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.search,
                color: Colors.black
              ),
            )
          ],
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          fixedColor: Colors.red,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              title: Text("Trending"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Subscriptions"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              title: Text("Library"),
            ),
          ],
        ),
      ),
    );
  }
}