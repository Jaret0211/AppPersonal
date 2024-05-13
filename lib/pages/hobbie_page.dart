import 'package:flutter/material.dart';

class HobbiePage extends StatelessWidget {
  const HobbiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Mis hobbies...'),
      ),
      body:ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          HobbiesCards(),
          SizedBox(height: 30.0,),
          
          HobbiesCards2(),
          SizedBox(height: 30.0,),

          HobbiesCards3(),
          SizedBox(height: 30.0,),

          HobbiesCards4(),
          SizedBox(height: 30.0,)
          ]
    ),
    floatingActionButton: FloatingActionButton(
        child: Icon(Icons.west, color: Color.fromARGB(255, 255, 255, 255), ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget HobbiesCards(){
      final card= Container(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'),
             image: NetworkImage('https://cdn.theathletic.com/app/uploads/2022/11/05000903/USATSI_17658418-scaled-e1667621364808-1024x682.jpg'),
             fit: BoxFit.cover,
             fadeInDuration: Duration(milliseconds: 200)
             ),
             Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Mi deporte favorito es el basquetbol'),
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

    Widget HobbiesCards2(){
      final card= Container(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'),
             image: NetworkImage('https://phantom-marca.unidadeditorial.es/e14f9f59bcec8b9b109f53e2867f4d46/crop/0x0/1401x788/resize/1320/f/jpg/assets/multimedia/imagenes/2021/04/28/16196210600962.jpg'),
             fit: BoxFit.cover,
             fadeInDuration: Duration(milliseconds: 200)
             ),
             Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Me encanta jugar videojuegos de acción'),
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

    Widget HobbiesCards3(){
      final card= Container(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'),
             image: NetworkImage('https://www.tvhifipro.com/wp-content/uploads/2022/09/Auriculares-Sony-WH-1000XM5-caracteristicas-y-opiniones.jpg'),
             fit: BoxFit.cover,
             fadeInDuration: Duration(milliseconds: 200)
             ),
             Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Me gusta mucho escuchar musica'),
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


     Widget HobbiesCards4(){
      final card= Container(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'),
             image: NetworkImage('https://www.realestatemarket.com.mx/images/articles/101-retail_en_evolucion/01-fulltext/096-cine.jpg'),
             fit: BoxFit.cover,
             fadeInDuration: Duration(milliseconds: 200)
             ),
             Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Disfruto mucho ir al cine'),
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

}