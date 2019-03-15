import 'package:flutter/material.dart';
class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(200,40.0,20.0,40.0),
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Positioned(
                  left: 20.0,
                  child: Container(
                    width: 200.0,
                    height: 400.0,
                    decoration: BoxDecoration(
                      color: Colors.amber,

                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),


    );
  }
}
