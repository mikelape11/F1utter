import 'package:flutter/material.dart';
import '../navigationDrawer.dart';

class homePage extends StatelessWidget {
  static const String routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: navigationDrawer(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image:  AssetImage('images/portada.png'),
            ),
          ),
        )
      )
    );
  }
}