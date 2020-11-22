import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/pages/contactPage.dart';
import 'package:proyecto/pages/eventPage.dart';
import 'package:proyecto/pages/homePage.dart';
import 'package:proyecto/pages/notificationPage.dart';
import 'package:proyecto/pages/pilotoPage.dart';
import 'package:proyecto/routes/pageRoute.dart';

import 'blocs/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return ChangeNotifierProvider<ThemeChanger>(
      builder: (_) => ThemeChanger(ThemeData.light()),
      child: new MaterialAppWithTheme(),
    );
 }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return new MaterialApp(
     title: 'NavigationDrawer Demo',
     debugShowCheckedModeBanner: false,
     home: homePage(),
     theme: theme.getTheme(),
     routes:  {
       pageRoutes.home: (context) => homePage(),
       pageRoutes.contact: (context) => contactPage(),
       pageRoutes.event: (context) => eventPage(),
       pageRoutes.piloto: (context) => pilotoPage(),
       pageRoutes.notification: (context) => notificationPage(),
     },
   );
  }
}