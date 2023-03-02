import 'package:flutter/material.dart';
import 'package:rentapp/contents.dart';
import 'package:rentapp/details.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
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
                    border: OutlineInputBorder(), hintText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username";
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
                    border: OutlineInputBorder(), hintText: 'Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Provide Password";
                  } else if (value.length < 6) {
                    return "Min Lenght is 6";
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
                              builder: (context) => Vehicles(),
                            ));
                      }
                    },
                    child: Text('Login')),
              )
            ],
          ),
        ),
      ),
    );

    //           ElevatedButton(
    //               onPressed: () {
    //                 Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                       builder: (context) => Vehicles(),
    //                     ));
    //               },
    //               child: Text('Guest login')),
    //           SizedBox(
    //             height: 30,
    //           ),
    //           Text('forgot password'),
    //           SizedBox(
    //             height: 30,
    //           ),
    //           Text("sign up now")
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
