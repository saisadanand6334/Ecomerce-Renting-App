import 'package:flutter/material.dart';
import 'package:rentapp/splash.dart';


void main() {
  runApp(const Rentals());
}

class Rentals extends StatelessWidget {
  const Rentals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
         MaterialApp(
          debugShowCheckedModeBanner: false,
          home:Splash(),




      );
  }
}