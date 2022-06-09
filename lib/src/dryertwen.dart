import 'package:dobif/src/fin.dart';
import 'package:flutter/material.dart';

class Dryertwen extends StatefulWidget {
  const Dryertwen({Key? key}) : super(key: key);

  @override
  State<Dryertwen> createState() => _DryertwenState();
}

class _DryertwenState extends State<Dryertwen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:  <Widget>[
                const ListTile(
                  title: Text(
                    'Total Payment : RM2.00',
                    textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                ),
          const SizedBox(height: 40,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    textStyle: const TextStyle(fontSize: 28),
                    primary: const Color.fromARGB(255, 123, 107, 180),
                    onPrimary: Colors.white,
                  ),
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const Fin()));
                    },
                    child: const Text('done',
                    style: TextStyle(fontSize: 30.0),),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}