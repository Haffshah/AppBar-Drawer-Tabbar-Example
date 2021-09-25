
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LongAppBar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffaca96),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: Container(
          child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppBar2(),
                  ),
                );
              },
              child: Icon(Icons.arrow_back, size: 30.0)),
        ),
        toolbarHeight: 100, // Set this height
        flexibleSpace: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Harsh Shah',
                  style: TextStyle(fontSize: 45.0, color: Colors.white),
                ),
                Text(
                  'Using The ToolbarHeight',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 50.0),
            child: Container(
              child: Text(
                'Use toolbarHeight : height in int  \nThere\'s no longer a need to use PreferredSize. Use toolbarHeight with flexibleSpace.',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
