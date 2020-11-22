import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/widgets/createDrawerBodyItem.dart';
import 'package:proyecto/widgets/createDrawerHeader.dart';
import 'package:proyecto/routes/pageRoute.dart';
import 'package:proyecto/blocs/theme.dart';


class navigationDrawer extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
   return Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children: <Widget>[
         createDrawerHeader(),
         createDrawerBodyItem(
           icon: Icons.home,
           text: 'Home',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.home),
         ),
         createDrawerBodyItem(
           icon: Icons.account_circle,
           text: 'Pilotos',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.piloto),
         ),

         createDrawerBodyItem(
           icon: Icons.directions_car,
           text: 'Equipos',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.event),
         ),
         //Divider(),
         createDrawerBodyItem(
           icon: Icons.contact_phone,
           text: 'Clasificacion',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.notification),
         ),
         createDrawerBodyItem(
           icon: Icons.notifications_active,
           text: 'Noticias',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.contact),
         ),
         Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 230.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                IconButton(
                  icon: Icon(Icons.bedtime),
                  onPressed: () => _themeChanger.setTheme(ThemeData.dark())),
                IconButton(
                  icon: Icon(Icons.brightness_low),
                  onPressed: () => _themeChanger.setTheme(ThemeData.light())),
                ]
              ),
            ),
          ],
        ),
       ],
     ),
   );
 }
}

class _themeChanger {
}