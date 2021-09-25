
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'ForthPage.dart';
import 'NotificationPAge.dart';

class CustomAppBar extends AppBar {
  CustomAppBar(
      {Key? key,
      required Widget title,
      Color backgroundColor = Colors.cyan,
      List<Widget>? actions})
      : super(
            key: key,
            title: title,
            backgroundColor: backgroundColor,
            actions: actions);
}

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  var _scafoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      appBar: CustomAppBar(
        backgroundColor: Colors.amber,
        title: Text('Custom AppBar'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationPage(),
                    ),
                  );
                },
                child: Icon(Icons.notifications)),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 30.0),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              InkWell(
                onTap: () {
                  _scafoldKey.currentState?.openDrawer();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Click on this Left Arrow icon or Click On Top Left Menu Icon to See Drawer Open/Close Use',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              SizedBox(
                height: 50.0,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Click On Top Right Notification Icon or Below Text Next Page to See Custom Appbar Use',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              SizedBox(
                height: 50.0,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FourthPage(),
                    ),
                  );
                },
                child: Text(
                  'Next Page',
                  style: TextStyle(color: Colors.cyan, fontSize: 25.0),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: DrawerClass(),
    );
  }
}
