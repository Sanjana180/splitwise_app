import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';  
import 'package:firebase_core/firebase_core.dart';
import 'package:splitwise/Stats.dart';
import 'package:splitwise/Database.dart';
import 'package:splitwise/form.dart';


class SecondScreen extends StatelessWidget {  
  @override  
  FirestoreData _firestoreData = FirestoreData();
  Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
body: Center(
child: Stack(
fit: StackFit.passthrough,
overflow: Overflow.visible,
children: <Widget>[
// Max Size Widget
Container(
height: double.infinity,
width: double.infinity,
color: Colors.white,
child: Center(),
),
Positioned(
top: 61,
right: 15,
left: 15,
child: Container(
height: 1,
width: 200,
color: Colors.black,
),
),
Positioned(
top: 65,
right: 120,

left: 15,
child: Container(
height: 50,
width: 200,
color: Colors.white,
child: Row(
children: <Widget>[
Align(
alignment: FractionalOffset(0.2, 0.6),
child: Text(
'With you and:',
textAlign: TextAlign.center,
style: TextStyle(color: Colors.black, fontSize: 25.0),
),
),
Expanded(
child: TextField(
style: TextStyle(fontSize: 25),
decoration: InputDecoration(
border: InputBorder.none,
hintText: 'Enter names, emails, or phone #s',
),
),
),
],
),
),
),

Positioned(
top: 116,
right: 15,
left: 15,
child: Container(
height: 1,
width: 200,
color: Color(0x64646464),
),
),
Positioned(
top: 160,
right: 60,
left: 40,
child: Container(
height: 60,
width: 200,
color: Color(0xFFFFFFFF),
child: Row(
children: <Widget>[
Padding(
padding: EdgeInsets.fromLTRB(50, 0, 30, 0),
child: Icon(
Icons.event_note,
color: Colors.black,
size: 50.0,
),
),

Expanded(
child: TextField(
style: TextStyle(fontSize: 25),
decoration: InputDecoration(
border: UnderlineInputBorder(),
hintText: 'Enter a Description',
),
),
),
],
),
),
),
Positioned(
top: 230,
right: 60,
left: 80,
child: Container(
height: 60,
width: 200,
color: Color(0xFFFFFFFF),
child: Row(
children: <Widget>[
Align(
alignment: Alignment.centerLeft,
child: Icon(
Icons.event_note,
color: Colors.black,
size: 30.0,
),
),
Expanded(
child: TextField(
style: TextStyle(fontSize: 35),
decoration: InputDecoration(
border: UnderlineInputBorder(),
hintText: '0.00',
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
left: 80,
child: Container(
height: 60,
width: 200,
color: Color(0xFFFFFFFF),
child: Row(
children: <Widget>[
Align(
alignment: Alignment.centerLeft,
child: Text(
'Paid by',
textAlign: TextAlign.center,
style: TextStyle(color: Colors.black, fontSize: 30.0),
),
),
Padding(
padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
child: Container(
width: 60.0,
child: TextField(

style: TextStyle(fontSize: 30),
decoration: InputDecoration(
border: UnderlineInputBorder(),
hintText: 'you',
),
),
),
),
Align(
alignment: Alignment.centerLeft,
child: Text(
'and split',
textAlign: TextAlign.center,
style: TextStyle(color: Colors.black, fontSize: 30.0),
),
),
Padding(
padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
child: Container(
width: 100.0,
child: TextField(
style: TextStyle(fontSize: 30),
decoration: InputDecoration(
border: UnderlineInputBorder(),
hintText: 'equally',
),
),
),

),
],
),
),
),

Positioned(
top: 0,
child: Container(
height: 60,
width: 680,
color: Color(0xFFFFFFFF),
child: Row(
children: <Widget>[
Align(
alignment: Alignment.centerLeft,
child: Icon(
Icons.arrow_back,
color: Colors.black,
size: 30.0,
),
),
Expanded(
child: Text(
'Add expense',
textAlign: TextAlign.center,
style: TextStyle(color: Colors.black, fontSize: 30.0),
),

),
Align(
alignment: Alignment.centerRight,
child: Icon(
Icons.check,
color: Colors.black,
size: 30.0,
),
),
],
),
)),

                    Positioned(
                    top: 400,
                    child: Container(
                      height: 480,
                      width: 392,
                      child: FutureBuilder<List<Station>>(
            future: _firestoreData.getproducts(),
            builder: (context,snapshot){
              if(snapshot.hasError){
                print(snapshot.error);
                return Text('error');
              }
              else if (snapshot.hasData){
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index){
                    return ListTile(
                      leading: Icon(Icons.album_sharp, color: Colors.black),
                      title: Text(snapshot.data[index].First_Name,style: TextStyle(color: Colors.black, fontSize: 25),),
                      subtitle: Text(snapshot.data[index].Last_Name,style: TextStyle(color: Colors.black, fontSize: 25),)
                    );
                  }
                );
              }
              return Text('Loading.....');
            }
          )
          
                      ),
                    ),

          
              ],
            )
          ),
    ),
    );
  }
}
//           body: Center(
//             child: Stack(
//               fit: StackFit.passthrough,
//               overflow: Overflow.visible,
//               children: <Widget>[
// // Max Size Widget
//                 Container(
//                   height: double.infinity,
//                   width: double.infinity,
//                   color: Colors.black,
//                   child: Center(),
//                 ),
//                 Positioned(
//                   top: 160,
//                   right: 40,
//                   left: 40,
//                   child: Container(
//                     height: 60,
//                     width: 200,
//                     color: Color(0xFFFFFFFF),
//                     child: Row(
//                       children: <Widget>[
//                         Expanded(
//                           child: TextField(
//                             style: TextStyle(fontSize: 25),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                               hintText: 'SOURCE',
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 230,
//                   right: 40,
//                   left: 40,
//                   child: Container(
//                     height: 60,
//                     width: 200,
//                     color: Color(0xFFFFFFFF),
//                     child: Row(
//                       children: <Widget>[
//                         Expanded(
//                           child: TextField(
//                             style: TextStyle(fontSize: 25),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                               hintText: 'DESTINATION',
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 320,
//                   right: 40,
//                   left: 40,
//                   child: Container(
//                     height: 60,
//                     width: 200,
//                     color: Color(0xFFFF0000),
//                     child: Row(
//                       children: <Widget>[
//                         Expanded(
//                           child: Text(
//                             'Search',
//                             textAlign: TextAlign.center,
//                             style:
//                                 TextStyle(color: Colors.white, fontSize: 30.0),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 Positioned(
//                     top: 0,
//                     child: Container(
//                       height: 80,
//                       width: 392,
//                       color: Color(0xFFFF0000),
//                       child: Row(
//                         children: <Widget>[
//                           Expanded(
//                             child: Text(
//                               '  STATION',
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                   color: Colors.white, fontSize: 20.0),
//                             ),
//                           ),
//                           Expanded(
//                             child: Text(
//                               'A to B',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   color: Colors.white, fontSize: 20.0),
//                             ),
//                           ),
//                           Expanded(
//                             child: Text(
//                               'FARE     ',
//                               textAlign: TextAlign.right,
//                               style: TextStyle(
//                                   color: Colors.white, fontSize: 20.0),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )),
//               ],
//             ),
//           )),
//     );
//   }
// }