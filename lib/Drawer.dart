import 'package:appbar_example/ProfilePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerClass extends StatefulWidget {
  const DrawerClass({
    Key? key,
  }) : super(key: key);

  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffbc3d456),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 27,
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.white70,
                          backgroundImage: AssetImage('images/harsh.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Text(
                          'Harsh M Shah',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, top: 20.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          tooltip: 'Back Button',
                          icon: Icon(Icons.arrow_forward_ios_sharp),
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              color: Colors.white70,
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Settings',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'About',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 45,
            ),
            Spacer(),
            Text(
              'Log Out',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
