import 'package:app_prueba/pages/list_page.dart';
import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  const inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Victor Jaret Díaz Méndez',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'App Personal',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            MaterialButton(
              elevation: 10.0,
              minWidth: 170.0,
              height: 50.0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Iniciar',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const ListPage())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}