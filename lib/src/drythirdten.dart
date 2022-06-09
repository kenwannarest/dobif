
// ignore_for_file: avoid_unnecessary_containers

import 'package:dobif/src/dryerten.dart';
import 'package:dobif/src/drytenpay.dart';
import 'package:flutter/material.dart';

class Drythirdten extends StatefulWidget {
  const Drythirdten({Key? key}) : super(key: key);

  @override
  State<Drythirdten> createState() => _DrythirdtenState();
}

class _DrythirdtenState extends State<Drythirdten> {
  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40,),
            const Text('please select one QR pay',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.5),),
                  //color: const Color.fromARGB(255, 123, 107, 180),
                  child: Container(
                    child: InkWell(
                    onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const Dryerten()));},
                    child: Ink.image(image: const AssetImage('img/mbqrpay.jpeg'),
                    fit: BoxFit.cover,
                    width: 197,
                    height: 206.5,
                    ),
                  ),
                  ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.5),),
                  //color: const Color.fromARGB(255, 123, 107, 180),
                  child: Container(
                    child: InkWell(
                    onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const Dryerten()));
                  },
                    child: Ink.image(image: const AssetImage('img/grab.png'),
                    fit: BoxFit.cover,
                    width: 197,
                    height: 206.5,
                    ),
                  ),
                  ),
                    ),
                  ],),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.5),),
                  child: InkWell(
                    onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const Dryerten()));},
                    child: Ink.image(image: const AssetImage('img/tng.png'),
                    fit: BoxFit.cover,
                    width: 197,
                    height: 206.5,
                    ),
                  ),
                  ),
              ],),
                Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.5),),
                  child: InkWell(
                    onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const Dryerten()));},
                    child: Ink.image(image: const AssetImage('img/boost.jpeg'),
                    fit: BoxFit.cover,
                    width: 197,
                    height: 206.5,
                    ),
                  ),
                  ),
              ],),
              ],
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 60),
                  textStyle: const TextStyle(fontSize: 28),
                primary: const Color.fromARGB(255, 123, 107, 180),
                  onPrimary: Colors.white,
                ),
                child: const Text('cancel'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Drytenpay()),
                  );
                },
              ),
          ],
          
        ),        
      ),
    );
  }
}