import 'package:flutter/services.dart' show rootBundle;  // imports para poder usar los proveedores
import 'dart:convert';

class _MenuProvider {  //son privadas
  List<dynamic> opciones = [];

  //constructor

  _MenuProvider(){}

  //Método que obtiene la información del archivo json

  Future<List<dynamic>> cargarOpciones() async{
    final resp =await rootBundle.loadString('assets/menu_opts.json');
    Map dataMap = json.decode(resp);

    opciones = dataMap['rutas'];

  return opciones;
  }

}
//exponemos al provider para que cualquier otra clase lo pueda usar
final menuProvider = new _MenuProvider();