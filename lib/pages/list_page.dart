import 'package:flutter/material.dart';
import 'package:app_prueba/provider/menu_provider.dart';
import 'package:app_prueba/util/icon_util.dart';

class ListPage extends StatelessWidget {  //stless
  const ListPage ({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Personal",style: Theme.of(context).textTheme.headline3,),
      ),
      body: _crearLista(),
    );
  }


  Widget _crearLista(){
  return FutureBuilder(
    future: menuProvider.cargarOpciones(),
    initialData: [],
    builder:(BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
      return ListView(
        children: _crearItems(snapshot.data, context),
      );
    }
  );
}

  List<Widget> _crearItems(List<dynamic>? data, BuildContext context){
    final List<Widget> items = [];
    
    if (data == null) return [];

    data.forEach((item) { 
      final itemTemp = ListTile(
        title: Text(item['texto']),
        leading:getIcon(item['icon']),
        trailing: const Icon(
        Icons.arrow_circle_right,
        color: Color.fromARGB(255, 20, 59, 46)
        ),
        onTap: () {
    
          Navigator.pushNamed(context, item['ruta']);

        },
      );

      items
      ..add(itemTemp)
      ..add(const Divider());

    });
    return items;

  }

}