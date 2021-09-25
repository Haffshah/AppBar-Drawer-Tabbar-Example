import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomeAppBar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Notification'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.call),
          ),
        ],
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
          Spacer(),
          Container(

            color: Colors.cyanAccent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 50.0),
              child: Text(
                'This Page is Made using Custom Appbar',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}