import 'package:flutter/material.dart';  //importM

//Declaramos un mapa con los iconos (nombre,icono);

final _icons = <String, IconData>{
  'account_circle' : Icons.account_circle,
  'sports_esports': Icons.sports_esports,
  'photo_camera' : Icons.photo_camera,
};

//Método que retorna el icono solicitado
Icon getIcon(String nombreIcono){
  return Icon(_icons[nombreIcono], 
  color: Color.fromARGB(255, 27, 80, 62),);
}