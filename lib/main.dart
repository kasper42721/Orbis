import 'package:flutter/material.dart';
import 'tips.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;
  final List<Widget> _children = [Tips(), Tips(), Tips(),Tips()];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: _children[_selectedIndex],
        bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.teal[700],
              primaryColor: Colors.lime[500],
              textTheme: Theme.of(context).textTheme.copyWith(caption: new TextStyle(color: Colors.white))
            ),
            child: new BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: [
                new BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
                new BottomNavigationBarItem(icon: Icon(Icons.favorite),title: Text("Tips")),
                new BottomNavigationBarItem(icon: Icon(Icons.calendar_today),title: Text("Calculator")),
                new BottomNavigationBarItem(icon: Icon(Icons.explore),title: Text("News"))

              ],
            )
        ),

      ),

    );
  }


}
