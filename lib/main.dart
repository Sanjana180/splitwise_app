import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';  
import 'package:firebase_core/firebase_core.dart';
import 'package:splitwise/SecondScreen.dart';

  Future<void> main() async { 
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(Main1());  
}  

class Main1 extends StatelessWidget {
  //final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  Main1({Key key}) : super(key: key);
  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Route Navigation',  
      theme: ThemeData(  
        // This is the theme of your application.  
        primarySwatch: Colors.green,  
      ),  
      // Start the app with the "/" named route. In this case, the app starts  
      // on the FirstScreen widget. 
      home:FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context ,snapshot){
          if(snapshot.hasError){
            print('You have an error ! ${snapshot.error.toString()}');
            return Text('Something went wrong !');
          }else if(snapshot.hasData){
            return MyApp();
          }else {
            return Text('Inside else');
          }
        }
      ), 
      // initialRoute: '/',  
      // routes: {  
      //   // When navigating to the "/" route, build the FirstScreen widget.  
      //   '/': (context) =>  const HomeScreen(),  
      //   // When navigating to the "/second" route, build the SecondScreen widget.  
      //   '/second': (context) => SecondScreen(),  
      // },  
    );
    }
    }
      
  
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: MyStackWidget(),
        );
        }
        }

  class MyStackWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              overflow: Overflow.visible,
              children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.white,
                    child: Center(),
                    ),
                    Positioned(
                      top: 80,
                      right: 160,
                      left: 160,
                      child: Container(
                        height: 200,
                        width: 100,
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.network(
                                
                                'https://www.freepik.com/free-vector/social-media-logos-icons-set_10490904.htm#query=website%20icon&position=0&from_view=keyword',

  height: 300,
  width: 150),

  ),
  ],
  ),
  ),

  ),
  Positioned(
  top: 300,
  right: 30,
  left: 30,
  child: Container(
  height: 50,
  width: 300,

  color: Color(0xFF00FFFF),
  child: Row(
  children: <Widget>[
  Expanded(
  child: Text(
  'Sign UP',
  textAlign: TextAlign.center,
  ),
  ),
  ],
  ),
  ),
  ),
  Positioned(
  top: 360,
  right: 30,
  left: 30,
  child: InkWell(

  onTap: () {
  Navigator.push(
  context,
  MaterialPageRoute(
  builder: (context) => SecondScreen()),
  );
  },
  child: Container(
  height: 50,
  width: 300,
  color: Color(0x64646464),
  child: Row(
  children: <Widget>[
  Expanded(
  child: Text(
  'Login',
  textAlign: TextAlign.center,
  ),
  ),
  ],
  ),
  ),),
  ),
  Positioned(
  top: 420,
  right: 30,
  left: 30,
  child: Container(

  height: 50,
  width: 300,
  color: Color(0x64646464),
  child: Row(
  children: <Widget>[
  Align(
  alignment: Alignment(0.1, 0.6),
  child: Image.network(
  'https://blog.hubspot.com/hubfs/image8-2.jpg',
  width: 50,
  ),
  ),

  Expanded(
  child: Text(
  'Sign UP with Google',
  textAlign: TextAlign.center,
  ),
  ),
  ],
  ),
  ),
  ),
  Positioned(
  top: 500,
  right: 100,
  left: 150,
  child: Container(

  height: 50,
  width: 300,
  color: Colors.white,
  child: Row(
  children: <Widget>[
  Expanded(
  child: Text(
  'Terms | Privacy Policy | Contact us',
  style: TextStyle(
  decoration: TextDecoration.underline,
  ),
  ),
  ),
  ],
  ),
  ),
  ),
  ],
  ),
  )),
  );
  }
  }
