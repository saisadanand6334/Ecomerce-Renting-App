import 'package:flutter/material.dart';
import 'package:rentapp/contents.dart';
import 'package:rentapp/details.dart';
import 'package:rentapp/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
      Duration(seconds: 4),
      () {},
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Register()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Image(
              image: AssetImage('imo/tsg.png'),
            )),
      ),
    );
  }
}
