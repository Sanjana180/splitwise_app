import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';  
import 'package:firebase_core/firebase_core.dart';
import 'package:splitwise/Stats.dart';
import 'package:splitwise/Database.dart';
import 'package:splitwise/SecondScreen.dart';

class form extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('m-Indicator-Mumbai'),
            //toolbarHeight: 30.0,
            backgroundColor: Color(0xFFFF880808),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              overflow: Overflow.visible,
              children: <Widget>[
// Max Size Widget
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black,
                  child: Center(),
                ),
                Positioned(
                  top: 160,
                  right: 40,
                  left: 40,
                  child: Container(
                    height: 60,
                    width: 200,
                    color: Color(0xFFFFFFFF),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            style: TextStyle(fontSize: 25),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'SOURCE',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  right: 40,
                  left: 40,
                  child: Container(
                    height: 60,
                    width: 200,
                    color: Color(0xFFFFFFFF),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            style: TextStyle(fontSize: 25),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'DESTINATION',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 320,
                  right: 40,
                  left: 40,
                  child: Container(
                    height: 60,
                    width: 200,
                    color: Color(0xFFFF0000),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child:FlatButton(
                          child: Text(
                            'Search',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.0),
                          ),
                          onPressed: () => {
                          Image.asset('assets/fare.jpeg'), 
          },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                    top: 0,
                    child: Container(
                      height: 80,
                      width: 392,
                      color: Color(0xFFFF0000),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child:FlatButton(
                            child: Text(
                              '  STATION',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            onPressed: () {
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SecondScreen()),);
                    //return SecondScreen()  
          }, 
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'A to B',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'FARE     ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}