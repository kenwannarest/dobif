// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_typing_uninitialized_variables, unused_local_variable
import 'package:dobif/src/detergen.dart';
import 'package:dobif/src/drysec.dart';
import 'package:dobif/src/sec.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  var Fluttertoast;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Hello, Welcome to Dobipay",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40,),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(280, 80),
                textStyle: const TextStyle(fontSize: 28),
                primary: Color.fromARGB(255, 123, 107, 180),
                onPrimary: Colors.white,
              ),
              child: const Text('select machine'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Sec()), //sec.dart
                  );
                },
            )
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(32),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 80),
                  textStyle: TextStyle(fontSize: 28),
                primary: Color.fromARGB(255, 123, 107, 180),
                  onPrimary: Colors.white,
                ),
                child: Text('add dryer time'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Drysec()), //dryer.dart
                  );
                },
              )),
          SizedBox(
            height: 40,
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(32),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 80),
                  textStyle: TextStyle(fontSize: 28),
                primary: Color.fromARGB(255, 123, 107, 180),
                  onPrimary: Colors.white,
                ),
                child: Text('buy detergen'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Detergen()),
                  );
                },
              )),
        ],
      ),
    );
  }
}
