import 'package:flutter/material.dart';

Widget createDrawerHeader() {
 return DrawerHeader(
     margin: EdgeInsets.zero,
     padding: EdgeInsets.zero,
     decoration: BoxDecoration(
         image: DecorationImage(
             fit: BoxFit.fill,
             image:  AssetImage('images/f1logo2.jpg'))),
     child: Stack(children: <Widget>[
       Positioned(
           bottom: 12.0,
           left: 16.0,
           child: Text("Formula 1 -  Mikel Apezetxea",
               style: TextStyle(
                   color: Colors.white,
                   fontSize: 20.0,
                   fontWeight: FontWeight.w500))),
     ]));
}