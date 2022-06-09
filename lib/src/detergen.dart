
// ignore_for_file: avoid_unnecessary_containers

import 'package:dobif/src/dethird.dart';
import 'package:flutter/material.dart';

class Detergen extends StatefulWidget {
  const Detergen({Key? key}) : super(key: key);

  @override
  State<Detergen> createState() => _DetergenState();
}

class _DetergenState extends State<Detergen> {
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
            const Text('choose one detergen',
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
                  color: const Color.fromARGB(255, 123, 107, 180),
                  child: Container(
                    child: InkWell(
                    onTap: (){},
                    child: Ink.image(image: const AssetImage('img/downy.jpg'),
                    fit: BoxFit.cover,
                    width: 197,
                    height: 206.5,
                    ),
                  ),
                  ),
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
                  MaterialPageRoute(builder: (context) => const Dethird()));
              }, 
              child: const Text('downy', 
              style: TextStyle(fontSize: 30.0),),),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.5),),
                  color: const Color.fromARGB(255, 123, 107, 180),
                  child: Container(
                    child: InkWell(
                    onTap: (){},
                    child: Ink.image(image: const AssetImage('img/softlan.jpg'),
                    fit: BoxFit.cover,
                    width: 197,
                    height: 206.5,
                    //child: const Text('Detergen 2',
                    //style: TextStyle(fontSize: 30.0),
                    //textAlign: TextAlign.center,),
                    ),
                  ),
                  ),
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
                  MaterialPageRoute(builder: (context) => const Dethird()));
              }, 
              child: const Text('softlan', 
              style: TextStyle(fontSize: 30.0),),),
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
                    onTap: (){},
                    child: Ink.image(image: const AssetImage('img/dynamo.jpg'),
                    fit: BoxFit.cover,
                    width: 197,
                    height: 206.5,
                    //child: const Text('Detergen 3',
                    //style: TextStyle(fontSize: 30.0),
                    //textAlign: TextAlign.center,),
                    ),
                  ),
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
                  MaterialPageRoute(builder: (context) => const Dethird()));
              }, 
              child: const Text('dynamo', 
              style: TextStyle(fontSize: 30.0),),),
              ],),
                Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.5),),
                  child: InkWell(
                    onTap: (){},
                    child: Ink.image(image: const AssetImage('img/top.jpg'),
                    fit: BoxFit.cover,
                    width: 197,
                    height: 206.5,
                    //child: const Text('Detergen 4',
                    //style: TextStyle(fontSize: 30.0),
                    //textAlign: TextAlign.center,),
                    ),
                  ),
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
                  MaterialPageRoute(builder: (context) => const Dethird()));
              }, 
              child: const Text('top', 
              style: TextStyle(fontSize: 30.0),),),
              ],),
              ],
            ),
          ],
        ),        
      ),
    );
  }
}