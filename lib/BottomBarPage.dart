import 'package:flutter/material.dart';
import 'screens/Album.dart';
import 'screens/Camera.dart';
import 'screens/Favourite.dart';
import 'screens/TimeLine.dart';

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int pageIndex = 0;
  List<Widget> pages = [
    Camera(),
    Album(),
    TimeLine(),
    Favourite()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            backgroundColor: Colors.purple,
            title: Text("Camera")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_album),
              title: Text("Album")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              title: Text("Timeline")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Favourite")
          ),
        ],
        onTap: (i){
          setState(() {
            pageIndex = i;
          });
        },

        selectedIconTheme: IconThemeData(
          size: 30.0,
        ),
      ),
      body: pages[pageIndex],
    );
  }
}
