import 'package:flutter/material.dart';
import 'package:proyecto/model/modelo.dart';

import '../navigationDrawer.dart';

class eventPage extends StatelessWidget {
 final Piloto datos = new Piloto();
 static const String routeName = '/eventPage';

 @override
 Widget build(BuildContext context) {
   return new Scaffold(
       appBar: AppBar(
         title: Text("Constructores 2020"),
       ),
       drawer: navigationDrawer(),
       body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
               for(int i=0; i<10; i++)
               FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: (){

                  },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 5, color: datos.colorBorde2[i]),
                    ),
                  ),
                  
                  child: Row(
                    children: <Widget>[
                      Container( //Numero Piloto
                        margin: EdgeInsets.only(left: 20.0),
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:  AssetImage('images/Equipos/${datos.coches[i]}.png'),
                          )
                        ),
                      ),
                      Container( //Nombre Piloto
                        width: 170,
                        height: 60,
                        alignment: Alignment.center,
                        child: Text("${datos.nombreEquipo[i]}".toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                      ),
                      Container( //Imagen Equipo
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:  AssetImage('images/LogoEquipos/${datos.imagenConstructores[i]}.png') 
                          )
                        ),
                      ),
                    ]
                  ),
                ),
               ) 
            ],
          ),
          )
       ),
      );
 }
}