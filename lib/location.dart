import 'package:flutter/material.dart';
import 'package:rentapp/desti.dart';
void main() {
  runApp(const Locate());
}
class Locate extends StatefulWidget {
  const Locate({Key? key}) : super(key: key);

  @override
  State<Locate> createState() => _LocateState();
}

class _LocateState extends State<Locate> {
  List s = ['Container1', 'Container2', 'Container3', 'Container4',
      'Container5',
      'Container6'];
  List h =['pho/chenn.jpeg',
      'pho/delh.jpeg',
      'pho/hyder.jpeg',
      'pho/koc.jpeg',
      'pho/mana.jpeg',
      'pho/trivan.jpeg'];
  List t=["Chennai",
      "Delhi",
      "Hyderabad",
      "Kochi",
      "KOzhikode",
      "Trivandrum"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Center(child: Text('Choose the ride')),
      ),
        body: Padding(
        padding: const EdgeInsets.all(20),
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
    children: [
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => Desti(),));
      },
      child: Container(
      height: 10,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.asset(
      h[index],

      ),
      Text(
      t[index],
      style: TextStyle(
      fontFamily: 'Pacifico',
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black),
      ),
      ])),
    );
    },
    ),

    ]))
    ));}
}
