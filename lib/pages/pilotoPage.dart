import 'package:flutter/material.dart';

import '../navigationDrawer.dart';

class pilotoPage extends StatelessWidget {
 static const String routeName = '/pilotoPage';

 @override
 Widget build(BuildContext context) {
   return new Scaffold(
       appBar: AppBar(
         title: Text("My piloto"),
       ),
       drawer: navigationDrawer(),
       body: Center(
         child: Column(
           children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text("This is piloto page")
              ),
           ],
         ),
        )
      );
         
 }
}