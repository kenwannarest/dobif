
import 'package:dobif/src/drytenpay.dart';
import 'package:dobif/src/drytwenpay.dart';
import 'package:flutter/material.dart';

class Dryer extends StatefulWidget {
  const Dryer({Key? key}) : super(key: key);

  @override
  State<Dryer> createState() => _DryerState();
}

class _DryerState extends State<Dryer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 300,
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
              const SizedBox(height: 20,),
              const ListTile(
                title: Text('choose one', 
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,),
                //subtitle: Text('Detergent & Softener available : ',
                //    style: TextStyle(fontSize: 18.0)),
              ),

              const SizedBox(height: 30,),
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
                  MaterialPageRoute(builder: (context) => const Drytenpay()));
              }, 
              child: const Text('10 minutes', 
              style: TextStyle(fontSize: 30.0),),),

              const SizedBox(height: 30,),
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
                    MaterialPageRoute(builder: (context) => const Drytwenpay()));
                }, 
                child: const Text('20 minutes', 
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,),),
            ],
          ),
        ),
      ),
    );
  }
}
