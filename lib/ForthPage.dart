import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomeAppBar.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Fourth Page '),
      backgroundColor: Color(0xffba68c8),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xffd1a8d7),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 50.0),
          child: Text(
            'This Page is Made using Custom Appbar',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
