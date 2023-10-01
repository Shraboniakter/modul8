import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
///MediaQuery

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ///old version
   /// Size size=MediaQuery.of(context).size;
    /// New version
    // Size size=MediaQuery.sizeOf(context);
    // print(size);
    //
    // print(size.width);
    // print(size.height);
    // print(size.flipped);
    // Orientation orientation=MediaQuery.orientationOf(context);
    // print(orientation);

   return Scaffold(
appBar: AppBar(
  title: Center
    (child:Text('Responsive'),
  ),
),
     body: LayoutBuilder(
       builder: (context,constraints) {
         print(constraints.maxWidth);
         if (constraints.maxWidth > 500) {
           return Center(child: Text('To big screen'),);
         } else {
           return Center(child:
           OrientationBuilder(
               builder: (context, orientation) {
                 return Column( mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   Text(
                   (orientation == Orientation.portrait
                       ? 'portrait'
                       : 'Landscape'),
                   style: TextStyle(fontSize: 40),
                 ),
                 Wrap(
                   alignment: WrapAlignment.center,
                     crossAxisAlignment: WrapCrossAlignment.end,
                     children:[

                       Text('fgwjhgwrjliwujaggheehkerhgkjehglejglejehhjhg'),
                       Text('nfjhwbfhgkjgahkglijejgegueougekhgkjhiueyhjflakkfjlksjfl'),
                       Text('nfjhwbfhgkjgahkglijejgegueougekhgkjhiueyhjflakkfjlksjfl'),
                     ],
                 ),

                 ],
                 );
               }
           ),
           );

       }
       }
     ),

   );
  }

}
