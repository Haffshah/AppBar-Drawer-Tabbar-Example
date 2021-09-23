import 'package:flutter/material.dart';

class TabBarclass extends StatefulWidget {
  const TabBarclass({Key? key}) : super(key: key);

  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBarclass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('TabBar Example'),
          bottom: TabBar(
            tabs: [
              Text(
                'Hanuman',
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                'Ganesha',
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                'Quote',
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              height: 250,
              width: 150,
              child:  Image.asset('images/hanuman.jpg'),
            ),
            Container(height: 250,
              width: 150,
              child:  Image.asset('images/ganesha.jpg'),),
            Container(height: 250,
              width: 150,
              child:  Image.asset('images/quote.png'),),
          ],
        ),
      ),
    );
  }
}
