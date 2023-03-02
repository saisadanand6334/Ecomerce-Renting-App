import 'package:flutter/material.dart';

class Accou extends StatefulWidget {
  const Accou({Key? key}) : super(key: key);

  @override
  State<Accou> createState() => _LoginState();
}

List l = [
  " Plus Membership",
  "Edit Profile",
  "Saved Cards \$ Wallet",
  "Saved Addresses",
  "Select Language",
  "Notification Settings"
];
List<IconData> icn = [
  (Icons.star_border),
  (Icons.person_outline_rounded),
  (Icons.save),
  (Icons.location_on_outlined),
  (Icons.sort_by_alpha_rounded),
  (Icons.notifications_on)
];

class _LoginState extends State<Accou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Text("Accounts"),
      ),
      body: ListView.builder(
          itemCount: l.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 40,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              icn[index],
                              color: Colors.green,
                            ),
                            SizedBox(width: 20,),
                            Text(
                              l[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}