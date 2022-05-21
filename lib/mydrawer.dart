import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(backgroundColor: Colors.blue),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Hem Mohamed",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text("Mobile App developer"),
              ]),
        )),
        SizedBox(
          height: 30.0,
        ),
        ListTile(
          onTap: null,
          leading: Icon(Icons.person),
          title: Text("Managers"),
        ),
        ListTile(
          onTap: null,
          leading: Icon(Icons.format_paint_rounded),
          title: Text("Designers"),
        ),
        ListTile(
          onTap: null,
          leading: Icon(Icons.computer),
          title: Text("Developers"),
        ),
      ],
    );
  }
}
