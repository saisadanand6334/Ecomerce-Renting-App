import 'package:flutter/material.dart';
import 'package:rentapp/desti.dart';

void main() {
  runApp(const Veh());
}

class Veh extends StatefulWidget {
  const Veh({Key? key}) : super(key: key);

  @override
  State<Veh> createState() => _LocateState();
}

class _LocateState extends State<Veh> {
  List s = [
    'Container1',
    'Container2',
    'Container3',
    'Container4',
    'Container5',
    'Container6',
    'Container7'
  ];
  List h = [
    'pics/auto.jpeg',
    'pics/busw.png',
    'pics/car.png',
    'pics/motob.jpeg',
    'pics/pick.jpeg',
    'pics/taxca.jpeg',
    'pics/truc.png'
  ];
  List t = ["Auto", "Bus", "Car", "BIKE", "Pickup", "Taxi", "Truck"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('Choose pick-up city')),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 50,
                        mainAxisSpacing: 50),
                    itemCount: s.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Desti(),
                              ));
                        },
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Image.asset(h[index]),
                            ),
                            Text(
                              t[index],
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ]))));
  }
}
