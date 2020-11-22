import 'package:flutter/material.dart';
import 'package:proyecto/model/modelo.dart';
import '../navigationDrawer.dart';
import 'package:proyecto/pages/infoPiloto/InfoPiloto.dart';


class pilotoPage extends StatelessWidget {
  final Piloto datos = new Piloto();
  static const String routeName = '/pilotoPage';

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
       appBar: AppBar(
         title: Text("Pilotos 2020"),
       ),
       drawer: navigationDrawer(),
       body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
               for(int i=0; i<20; i++)
                FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => InfoPiloto(datos.nombrePiloto[i], datos.piloto[i], datos.numeroPiloto[i], datos.piloto[i], datos.color1[i], datos.color2[i], datos.equipoPiloto[i]),
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      // gradient: LinearGradient(
                      //   colors: [datos.color2[i], datos.color1[i]],
                      //   stops: [0.1, 1]
                      // ),
                      border: Border(
                        bottom: BorderSide(width: 5, color: datos.colorBorde[i]),
                      ),
                    ),
                    //margin: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Container( //Numero Piloto
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:  AssetImage('images/Pilotos/Numeros/${datos.numeroPiloto[i]}.png')
                            )
                          ),
                        ),
                        Container( //Imagen Piloto
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:  AssetImage('images/Pilotos/Pequeños/${datos.piloto[i]}.png') 
                            )
                          ),
                        ),
                        Container( //Nombre Piloto
                          width: 162,
                          height: 70,
                          alignment: Alignment.center,
                          child: Text("${datos.nombrePiloto[i]} ${datos.piloto[i]}".toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                        ),
                        Container( //Imagen Equipo
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:  AssetImage('images/LogoEquipos/${datos.imagenEquipo[i]}.png') 
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