import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:
          Text('Profile'),

      ),
     body: Center(child:
         Stack(
           children: [
             Container(
               width: 200,
               height:200,
               color: Colors.purple,
             ),
            Positioned(
              bottom: 50,
              right: 50,
              child: Container(
               width: 100,
               height:100,

               color: Colors.cyan,
             ),
            ),
            Positioned.fill(
              child:Align(
                alignment: Alignment.topCenter,
                child:
              Container(
               width: 50,
               height:50,
               color: Colors.pinkAccent,
             ),
            ),
            ),



           ],
         ),
       ),

    );
  }

}