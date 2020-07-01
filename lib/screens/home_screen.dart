import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/style/theme.dart' as Style;
import 'package:movie_app/widgets/genres.dart';
import 'package:movie_app/widgets/genres_list.dart';
import 'package:movie_app/widgets/now_playing.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            EvaIcons.menu2Outline,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('Movie App'),
        actions: [
          IconButton(
            icon: Icon(
              EvaIcons.searchOutline,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          NowPlaying(),
          GenresScreen(),
        ],
      ),
    );
  }
}
