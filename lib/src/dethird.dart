
import 'package:dobif/src/detewall.dart';
import 'package:dobif/src/detpay.dart';
import 'package:flutter/material.dart';

class Dethird extends StatefulWidget {
  const Dethird({Key? key}) : super(key: key);

  @override
  State<Dethird> createState() => _DethirdState();
}

class _DethirdState extends State<Dethird> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 350,
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
              const ListTile(
                title: Text('please select payment method', 
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
                  MaterialPageRoute(builder: (context) => const Detpay()));
              }, 
              child: const Text('cash', 
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
                    MaterialPageRoute(builder: (context) => const Detpay()));
                }, 
                child: const Text('debit card', 
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
                  MaterialPageRoute(builder: (context) => const Detewall()));
              }, 
              child: const Text('QR code', 
              style: TextStyle(fontSize: 30.0),),),
            ],
          ),
        ),
      ),
    );
  }
}
