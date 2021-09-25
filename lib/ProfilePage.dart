
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'CustomeAppBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(
          title: Center(child: Text('ProfilePage')),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white70,
                  backgroundImage: AssetImage('images/harsh.png'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Harsh Shah',
                  style: TextStyle(
                    fontFamily: 'Dancing',
                    color: Colors.amber,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                  width: 300.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Flutter Developer \n  Web Developer',
                  style: TextStyle(
                    fontFamily: 'Kaisei',
                    color: Colors.amber,
                    letterSpacing: 1.0,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                  width: 250.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: ListTile(
                          leading:
                              Icon(Icons.call, color: Colors.white, size: 20.0),
                          title: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () => launch("tel://8320064517"),
                            child: Text(
                              "+91 8320064517",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          leading: Icon(Icons.mark_email_read_outlined,
                              color: Colors.white, size: 20.0),
                          title: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () =>
                                launch("mailto:shahharsh7786@gmail.com"),
                            child: Text(
                              "shahharsh7786@gmail.com",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          leading: Text('in',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0)),
                          title: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () => _launchUrl(),
                            child: Text(
                              'Harsh M Shah',
                              style: TextStyle(
                                color: Colors.white,
                                // decoration: TextDecoration.underline,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          mouseCursor: SystemMouseCursors.click,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                          leading: Icon(Icons.contact_page_outlined,
                              color: Colors.white, size: 20.0),
                          title: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.black),
                            onPressed: () => _resumeView(),
                            child: Text(
                              'Resume',
                              style: TextStyle(
                                color: Colors.white,
                                // decoration: TextDecoration.underline,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          mouseCursor: SystemMouseCursors.click,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_launchUrl() async {
  const url = 'https://www.linkedin.com/in/harsh-m-shah-5152b21a9';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_resumeView() async {
  const url =
      'https://www.canva.com/design/DAEmxJHLTc4/CVPwLbMrjrcQkWGjhG2Wug/view?utm_content=DAEmxJHLTc4&utm_campaign=designshare&utm_medium=link&utm_source=sharebutton';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
