import 'package:app_prueba/pages/list_page.dart';
import 'package:app_prueba/pages/inicio.dart';
import 'package:app_prueba/pages/hobbie_page.dart';
import 'package:app_prueba/pages/me_page.dart';
import 'package:app_prueba/pages/photos_page.dart';
import 'package:flutter/material.dart';



void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quitar debug
      title: 'App Personal',
      home: inicio(),
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 54, 139, 125),
       // accentColor: Color.fromARGB(255, 20, 59, 46),
        highlightColor: Color.fromARGB(255, 39, 39, 110),

        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            height: 5.0,
            color: Color.fromARGB(255, 27, 70, 68),
          ),

          headline2: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 54, 139, 125),
          ),
          headline3: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),

      initialRoute: 'inicio',
      routes: {
        'inicio' : (context) => inicio(),
        'ListPage' :(context) => ListPage(),
        'hobbiePage' : (context) => HobbiePage(),
        'mePage' : (context) => mePage(),
        'photosPage' :(context) => photosPage()
      },
    );
  }
}