import 'package:dobif/src/welcome.dart';
import 'package:flutter/material.dart';

class Fin extends StatefulWidget {
  const Fin({Key? key}) : super(key: key);

  @override
  State<Fin> createState() => _FinState();
}

class _FinState extends State<Fin> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 200,
        padding: const EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  <Widget>[
              const SizedBox(height: 30,),
              const ListTile(
                title: Text('Thank You', 
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,),
                subtitle: Text('Come Again !',
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.center,),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  textStyle: const TextStyle(fontSize: 28),
                primary: const Color.fromARGB(255, 123, 107, 180),
                  onPrimary: Colors.white,
                ),
                onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const Welcome()));
              }, 
              child: const Text('home', 
              style: TextStyle(fontSize: 30.0),),),

            ],
          ),
        ),
      ),
    );
  }
}