// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false, //PARA QUITAR MENSAJE DE EMULADOR
    title: 'Flutter Demo',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu), //PRIMERA FORMA DE ICONOS
        //  leading: IconButton( icon: Icon(Icons.menu), onPressed: () => {},), //SEGUNDA FORMA DE ICONOS
        centerTitle: true,
        title: Text('PÁGINA PRINCIPAL'),
        elevation: 20.0,
        shadowColor: Colors.blue[200],
        //backgroundColor: Colors.red,
        //actionsIconTheme: IconThemeData(color: Colors.red), //PARA EL COLOR DE LOS ICONOS
        shape: RoundedRectangleBorder(
          //Nos funciona para los bordes de la barrra de opciones
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
          ),
          //        IconButton(
          //         icon: Icon(Icons.note),
          //        onPressed: () => {print('BOTÓN DE NOTAS')},
          //S     ),
        ],
      ),

      //PARA EL BOTON DE SEGUNDA PANTALLA
      /*    body: Center(
          child: ElevatedButton(
        child: Text('SEGUNDA PANTALLA'),
        onPressed: () {
          final route = MaterialPageRoute(
            builder: (context) => const SecondPage(),
          );
          Navigator.push(context, route);
        },
      )),
    */

      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5.0),
          ElevatedButton(
              child: Text('SEGUNDA PANTALLA'),
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                );
                Navigator.push(context, route);
              }),
          SizedBox(height: 5.0),
          ElevatedButton(
              child: Text('TERCERA PANTALLA DATOS'),
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const ThirdPage(),
                );
                Navigator.push(context, route);
              }),
        ],
      )),
    );
  }
}

//ES PARA LA SEGUNDA PANTALLA
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEGUNDA PANTALLA'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Regresar'),
        onPressed: () => Navigator.pop(context),
      )),
    );
  }
}

//ES PARA LA TERCERA PANTALLA PANTALLA
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DATOS'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              Image.asset(
                'assets/img/CES.jpg',
                width: 170.0,
              ),
              Text(
                'Cesar Raul Gonzalez Valentin',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color.fromARGB(255, 11, 11, 11),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                  'Tecnologías de la Información Área Desarrollo de Software Multiplataforma',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 60, 226, 255),
                    fontFamily: 'Raleway',
                  )),
              SizedBox(width: 10.0),
              ElevatedButton(
                child: const Text('Regresar'),
                onPressed: () => Navigator.pop(context),
              ),
            ]),
      ),
    );

    /*     body: Center(
        
          child: ElevatedButton(
        child: const Text('Regresar'),
        onPressed: () => Navigator.pop(context),
      )),
    );*/
  }
}
