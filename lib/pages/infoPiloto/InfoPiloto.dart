import 'package:flutter/material.dart';
import 'package:proyecto/model/modelo.dart';

class InfoPiloto extends StatelessWidget {

  final String nombrePiloto;
  final String apellidoPiloto;
  final String numeroPiloto;
  final String imagenPiloto;
  final Color color1;
  final Color color2;
  final String equipoPiloto;
  InfoPiloto(this.nombrePiloto, this.apellidoPiloto, this.numeroPiloto, this.imagenPiloto, this.color1, this.color2, this.equipoPiloto);

  final Piloto datos = new Piloto();
  static const String routeName = '/InfoPiloto';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              Container(
                height: 170,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration( 
                  gradient: LinearGradient(
                    colors: [color2, Colors.transparent],
                    stops: [0.1, 1]
                  ),   
                  border: Border(
                    bottom: BorderSide(width: 10, color: color1),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/2,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(left: 25.0),
                          decoration: BoxDecoration(    
                            border: Border(
                              left: BorderSide(width: 7, color: color1),
                            ),
                          ),
                          height: 100,
                          width: MediaQuery.of(context).size.width/2.25,
                          child: Column(
                            children: <Widget>[
                              Text(nombrePiloto, style: TextStyle(fontSize: 16),),
                              Divider(),
                              Text(apellidoPiloto.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                              Divider(),
                              Text(numeroPiloto +" | "+equipoPiloto, style: TextStyle(fontSize: 16),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage('images/Pilotos/Pequeños/${imagenPiloto}.png') 
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      )
    );
  }
}