import 'package:flutter/material.dart';

class mePage extends StatelessWidget {
  const mePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Acerca de mi...'),
      ),
      body:ListView(
        padding: EdgeInsets.all(10.0),
        children: [

          foto(),
          SizedBox(height: 20.0,),
          
          _Card1(),
          SizedBox(height: 20.0,),
          
          _Card2(),
          SizedBox(height: 20.0,),
          
          _Card3(),
          SizedBox(height: 20.0,),
          
          _Card4(),
          SizedBox(height: 20.0,),
          
          _Card5(),
          SizedBox(height: 20.0,),],  
      ),
       
       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.west, color: Color.fromARGB(255, 255, 255, 255), ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget foto(){
      final card= Container(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: AssetImage('assets/images/yo.jpeg'),
             fit: BoxFit.cover,
             fadeInDuration: Duration(milliseconds: 200)
             ),
             Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Just a Cloud'),
             )
          ],
        ),
      );

      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color:Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: card,
        ),
      );
    }


   Widget _Card1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:Column(
        children: [
          ListTile(
            leading: Icon(Icons.info, color: Color.fromARGB(255, 20, 59, 46)),
            title: Text('Nombre y Apellidos'),
            subtitle: Text('Victor Jaret Díaz Méndez'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }



  Widget _Card2(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:Column(
        children: [
          ListTile(
            leading: Icon(Icons.event, color: Color.fromARGB(255, 20, 59, 46)),
            title: Text('Fecha de Nacimiento'),
            subtitle: Text('13-09-2003'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  Widget _Card3(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:Column(
        children: [
          ListTile(
            leading: Icon(Icons.person_add_alt, color: Color.fromARGB(255, 20, 59, 46)),
            title: Text('Edad'),
            subtitle: Text('19 años'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  Widget _Card4(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:Column(
        children: [
          ListTile(
            leading: Icon(Icons.male, color: Color.fromARGB(255, 20, 59, 46)),
            title: Text('Genero'),
            subtitle: Text('Masculino'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  Widget _Card5(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:Column(
        children: [
          ListTile(
            leading: Icon(Icons.school, color: Color.fromARGB(255, 20, 59, 46)),
            title: Text('Escolaridad Actual'),
            subtitle: Text('Universidad'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }
}



