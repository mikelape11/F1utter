import 'package:flutter/material.dart';
import 'package:proyecto/model/modelo.dart';

class InfoPiloto extends StatefulWidget{
  final String nombrePiloto;
  final String apellidoPiloto;
  final String numeroPiloto;
  final String imagenPiloto;
  final Color color1;
  final Color color2;
  final String equipoPiloto;
  final String biografiaPiloto;
  InfoPiloto(this.nombrePiloto, this.apellidoPiloto, this.numeroPiloto, this.imagenPiloto, this.color1, this.color2, this.equipoPiloto, this.biografiaPiloto);
  
  @override
  InfoPilotoPage createState()=> InfoPilotoPage();
}

class InfoPilotoPage extends State<InfoPiloto>{
  
  static const String routeName = '/InfoPiloto';

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.normal);
  List<Widget> _widgetOptions() => [
    Container(
      padding: EdgeInsets.all(10),
      child: Text(
        'Estadisticas',
        style: optionStyle,
      ),
    ),
    Container(
      padding: EdgeInsets.all(25),
      child: Text(
        '${widget.biografiaPiloto}',
        style: optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = _widgetOptions( );
    return new Scaffold(
      appBar: AppBar(
        title: Text("Piloto"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration( 
                    gradient: LinearGradient(
                      colors: [widget.color2, Colors.transparent],
                      stops: [0.1, 1]
                    ),   
                    border: Border(
                      bottom: BorderSide(width: 10, color: widget.color1),
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
                            margin: EdgeInsets.only(left: 28.0),
                            decoration: BoxDecoration(    
                              border: Border(
                                left: BorderSide(width: 7, color: widget.color1),
                              ),
                            ),
                            height: 100,
                            width: MediaQuery.of(context).size.width/2.25,
                            child: Column(
                              children: <Widget>[
                                Text(widget.nombrePiloto, style: TextStyle(fontSize: 16),),
                                Divider(),
                                Text(widget.apellidoPiloto.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                                Divider(),
                                Text(widget.numeroPiloto +" | "+widget.equipoPiloto, style: TextStyle(fontSize: 16),),
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
                            image:  AssetImage('images/Pilotos/Pequeños/${widget.imagenPiloto}.png') 
                          )
                        ),
                      ),
                    ],
                  ),
                ), 
                Container(
                  //child: _widgetOptions.elementAt(_selectedIndex),
                  child: children[_selectedIndex],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Estadisticas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Biografia',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.school),
          //   label: 'School',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: widget.color1,
        onTap: _onItemTapped,
      ),
    );
  }
}