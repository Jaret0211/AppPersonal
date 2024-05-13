import 'package:flutter/material.dart';


class photosPage extends StatelessWidget {
  const photosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Fotos Random...'),
      ),
      body:ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          foto1(),
          SizedBox(height: 30.0,),
          
          foto2(),
          SizedBox(height: 30.0,),

          foto3(),
          SizedBox(height: 30.0,),

          foto4(),
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

  Widget foto1(){
      final card= Container(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'),
             image: AssetImage('assets/images/1.jpeg'),
             fit: BoxFit.cover,
             fadeInDuration: Duration(milliseconds: 200)
             ),
             
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

    Widget foto2(){
      final card= Container(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'),
             image:AssetImage('assets/images/2.jpeg') ,
             fit: BoxFit.cover,
             fadeInDuration: Duration(milliseconds: 200)
             ),
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

    Widget foto3(){
      final card= Container(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'),
             image: AssetImage('assets/images/3.jpeg'),
             fit: BoxFit.cover,
             fadeInDuration: Duration(milliseconds: 200)
             ),
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


     Widget foto4(){
      final card= Container(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/jar-loading.gif'),
             image:  AssetImage('assets/images/4.jpeg'),
             fit: BoxFit.cover,
             fadeInDuration: Duration(milliseconds: 200)
             ),
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