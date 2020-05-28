import 'package:flutter/material.dart';
import 'dart:async';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => Home()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.block,
                          color: Colors.red,
                          size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Name Su Rakhvu Che?",
                        style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white),),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("Wallpapers For Everyone", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.normal),)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}
  //body: Stack(
//        fit: StackFit.expand,
//        children: <Widget>[
//          Container(
//            decoration: BoxDecoration(color: Colors.blueAccent),
//          ),
//          Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: <Widget>[
//              Expanded(
//                flex: 2,
//                child: Container(
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      CircleAvatar(
//                        backgroundColor: Colors.white,
//                        radius: 50.0,
//                        child: Icon(
//                          Icons.block,
//                          color: Colors.red,
//                          size: 50.0,
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(top: 10.0),
//                      ),
//                      Text(
//                        "Name Su Rakhvu Che?",
//                        style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
//                      )
//                    ],
//                  ),
//                ),
//              ),
//              Expanded(
//                flex: 1,
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white),),
//                    Padding(
//                      padding: EdgeInsets.only(top: 20.0),
//                    ),
//                    Text("Wallpapers For Everyone", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.normal),)
//                  ],
//                ),
//              )
//            ],
//          )
//        ],
//      ),