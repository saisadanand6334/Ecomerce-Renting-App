import 'package:flutter/material.dart';
import 'package:rentapp/contents.dart';

import 'login.dart';


void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: const Register()
    ,));
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.black,
          title: Center(
            child: Text('Register App',
              style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Color(0xcffB7EE23)),),
          ),

        ),


        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              children: [
                TextField(decoration: InputDecoration(
                  label: Text('Phone Number',style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),),
                  border: OutlineInputBorder(),
                ),),
                SizedBox(height: 20,),
                TextField(decoration: InputDecoration(
                    label:Text('ADRESS',style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    ),
                    border: OutlineInputBorder()),
                ),
                SizedBox(height: 20,),
                TextField(decoration: InputDecoration(
                  label: Text(' NAME',style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.normal),),
                  border: OutlineInputBorder(),),
                ),

                SizedBox(height: 20,),
                TextField(decoration: InputDecoration(
                  label:Text('EMAIL ADRESS',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,
                    ),) ,
                  border: OutlineInputBorder(),),
                ),
                SizedBox(height: 20,),
                TextField ( decoration: InputDecoration(
                  label: Text('PASSWORD',style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  ),

                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                ),

                SizedBox(height: 20,),
                TextField ( decoration: InputDecoration(
                  label: Text('CONFIRM PASSWORD',style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  ),

                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:350,vertical: 10),
                  child: Row(
                    children: [
                      Text('I agree with',
                        style: TextStyle
                          (fontSize: 20,
                          fontWeight: FontWeight.normal,

                        ),

                      ),
                      TextButton(onPressed: (){}, child: Text('Terms and condition')),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(height: 50,
                  width: 200,
                  color: Colors.black,
                  child: Center(
                    child: TextButton(onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                    }, 
                      child: Text('REGISTER',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xcffB7EE23)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account ?'),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                    }, child: Text('log in')),
                  ],
                ),



              ],
            ),
          ),
        )


    );
  }
}


