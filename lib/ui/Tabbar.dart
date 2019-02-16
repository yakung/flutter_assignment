import 'package:flutter/material.dart';

class TabDemo extends StatefulWidget{
  @override
  TabDemoState createState() {
    return new TabDemoState();
  }
}

class TabDemoState extends State<TabDemo> {
  int _currentIndex = 0;
  final List<Widget> _home = [

    Text("Home",style: TextStyle(fontSize: 20)),
    Text("Notify",style: TextStyle(fontSize: 20)),
    Text("Map",style: TextStyle(fontSize: 20)),
    Text("Profile",style: TextStyle(fontSize: 20)),
    Text("Setup",style: TextStyle(fontSize: 20)),
  ];

  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
        ),
        body:Center(
          child: _home[_currentIndex]
        ),
        bottomNavigationBar:new Theme(
            data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.blue,
              primaryColorDark: Colors.blueGrey,
          ),
        child:BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.view_compact),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("")
            ),
          ],
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
          
        ),
      ),
      );
  }
}