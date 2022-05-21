import 'package:flutter/material.dart';
import './mydrawer.dart';

void main() {
  runApp(MyForm());
}

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyFormState();
}

class _MyFormState extends State {
  final GlobalKey<ScaffoldState> _drawerscaffoldkey =
      new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _drawerscaffoldkey,
        appBar: AppBar(
          title: Text("Home"),
          actions: [
            IconButton(
              onPressed: () {
                return print("object");
              },
              icon: Icon(
                Icons.back_hand,
                color: Colors.white,
              ),
            ),
          ],
          leading: IconButton(
              onPressed: () {
                //on drawer menu pressed
                if (_drawerscaffoldkey.currentState!.isDrawerOpen) {
                  //if drawer is open, then close the drawer
                  Navigator.pop(context);
                } else {
                  _drawerscaffoldkey.currentState?.openDrawer();
                  //if drawer is closed then open the drawer.
                }
              },
              icon: Icon(Icons.menu, color: Colors.white)),
        ),
        drawer: Drawer(
          child: MyDrawer(),
        ),
      ),
    );
  }
}
