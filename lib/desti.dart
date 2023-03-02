import 'package:flutter/material.dart';
import 'package:rentapp/contents.dart';
import 'package:rentapp/vehic.dart';

void main() {
  runApp(Desti());
}

class Desti extends StatelessWidget {
  Desti({Key? key}) : super(key: key);
  final GlobalKey<FormState> _key = new GlobalKey<FormState>();
  final usercontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: usercontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Your location'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Location";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Choose Destination'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Choose Destination";
                  } else if (value.length < 6) {
                    return "Provide destination";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Veh(),
                            ));
                      }
                    },
                    child: Text('Go')),

              ),

            ],

          ),
        ),
      ),
    );

  }
}
