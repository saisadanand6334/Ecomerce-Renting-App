import 'package:flutter/material.dart';
import 'package:rentapp/accounts.dart';
import 'package:rentapp/calender.dart';
import 'package:rentapp/desti.dart';
import 'package:rentapp/location.dart';
import 'package:rentapp/login.dart';
import 'package:rentapp/notif.dart';

class Vehicles extends StatefulWidget {
  const Vehicles({Key? key}) : super(key: key);

  @override
  State<Vehicles> createState() => _VehiclesState();
}

class _VehiclesState extends State<Vehicles> {
  List pic = [
    'pics/auto.jpeg',
    'pics/busw.png',
    'pics/car.png'
        'pics/moto.jpeg'
        'pics/truc.png'
        'pics/pick.jpeg'
        'pics/taxca.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.maxFinite,
                color: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("TSG",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'TiltPrism',
                              fontSize: 40,
                              fontWeight: FontWeight.w700)),
                      Text("G  O",
                          style: TextStyle(
                              color: Color(0xcffB7EE23),
                              fontFamily: 'Akronim',
                              fontSize: 70,
                              fontWeight: FontWeight.w700)),
                      Text("Rent Your Drive",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GajrajOne',
                              fontSize: 40,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black12,
                        backgroundImage: AssetImage('pics/auto.jpeg'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black12,
                            backgroundImage: AssetImage("pics/busw.png"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black12,
                                backgroundImage: AssetImage('pics/car.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.black12,
                                    backgroundImage:
                                        AssetImage('pics/motob.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.black12,
                                    backgroundImage:
                                        AssetImage('pics/pick.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.black12,
                                    backgroundImage:
                                        AssetImage('pics/taxca.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.black12,
                                    backgroundImage:
                                        AssetImage('pics/truc.png'),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.toggle_on_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                  label: Center(
                    child: Text('Return Vehicle to another Location'),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: GestureDetector(onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Locate()),
                    );
                  },
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  label: Center(
                    child: Text('Choose pickup location'),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: GestureDetector(onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cale()),
                    );
                  },
                    child: Icon(
                      Icons.event_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  label: Center(
                    child: Text('Date and Time'),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Desti(),));
              },
                child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.black,
                  child: Center(
                    child: Text("Go",style: TextStyle(
                      color:  Color(0xcffB7EE23),
                        fontFamily: 'Akronim',
                        fontSize: 30,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: [
        BottomNavigationBarItem(
        icon: InkWell(
        onTap: () {
        Navigator.push(
        context, MaterialPageRoute(builder: (context) => Vehicles()));
        },
        child: Icon(Icons.home_filled)),
        label: 'Home',
        ),
        BottomNavigationBarItem(
        icon: InkWell(
        onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => Login()));
        },
    child: Icon(Icons.stars_outlined)),
    label: 'Bookings',
    ),
    BottomNavigationBarItem(
    icon: InkWell(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Notifi(),
    ));
    },
    child: Icon(Icons.notifications)),
    label: 'Notification'),
    BottomNavigationBarItem(
    icon: InkWell(onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Accou(),
    ));
    },
    child: Icon(Icons.account_circle_outlined)),
    label: 'Account',
    backgroundColor: Colors.cyan),

    ])));
  }
}


