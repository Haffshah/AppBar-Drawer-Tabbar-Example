import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({Key? key, required Widget title})
      : super(key: key, title: title, actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.notifications,
            ),
          ),
        ]);
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      builder: (context) => DrawerEndClass(),
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
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 50.0),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              Text(
                'Click On Top Left Menu Icon to See Drawer Open/Close Use',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              SizedBox(
                height: 50.0,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              Text(
                'Click On Top Right Notification Icon to See Custom Appbar Use',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      drawer: DrawerClass(),
    );
  }
}

class DrawerClass extends StatelessWidget {
  const DrawerClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 35.0,
              width: double.infinity,
              color: Colors.greenAccent,
              child: Center(
                child: Text('1. First Menu'),
              ),
            ),
            Divider(
              height: 1.0,
            ),
            Container(
              height: 35.0,
              width: double.infinity,
              color: Colors.greenAccent,
              child: Center(
                child: Text('2. Second Menu'),
              ),
            ),
            Divider(
              height: 1.0,
            ),
            Container(
              height: 35.0,
              width: double.infinity,
              color: Colors.greenAccent,
              child: Center(
                child: Text('3. Third Menu'),
              ),
            ),
            Divider(
              height: 1.0,
            ),
            Container(
              height: 35.0,
              width: double.infinity,
              color: Colors.greenAccent,
              child: Center(
                child: Text('4. Forth Menu'),
              ),
            ),
            Divider(
              height: 1.0,
            ),
            Container(
              height: 35.0,
              width: double.infinity,
              color: Colors.greenAccent,
              child: Center(
                child: Text('5. Five Menu'),
              ),
            ),
            Divider(
              height: 1.0,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40.0,
                width: 65.0,
                child: Center(
                    child: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                )),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.blueGrey.shade800,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerEndClass extends StatelessWidget {
  const DrawerEndClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Notification'),
      ),
      body: Column(
        children: [
          Container(
            height: 35.0,
            width: double.infinity,
            child: Center(
              child: Text('1. Notification'),
            ),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey,
          ),
          Container(
            height: 35.0,
            width: double.infinity,
            child: Center(
              child: Text('2. Notification'),
            ),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey,
          ),
          Container(
            height: 35.0,
            width: double.infinity,
            child: Center(
              child: Text('3. Notification'),
            ),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey,
          ),
          Container(
            height: 35.0,
            width: double.infinity,
            child: Center(
              child: Text('4. Notification'),
            ),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey,
          ),
          Container(
            height: 35.0,
            width: double.infinity,
            child: Center(
              child: Text('5. Notification'),
            ),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}