import 'package:flutter/material.dart';
import 'package:test12/Ui/homepage.dart';
import 'package:test12/Ui/inbox.dart';
import 'package:test12/Ui/profilepage.dart';
import 'package:test12/Ui/searchpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FakeTok",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  var pages = [
    HomePage(),
    SearchPage(),
    SearchPage(),
    InboxPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF010101),
      bottomNavigationBar: _bottomNav(),
      body: pages[i],
    );
  }

  _bottomNav() {
    return Container(
      height: 80.0,
      margin: EdgeInsets.only(bottom: 10.0),
      child: BottomNavigationBar(
        backgroundColor: Color(0xFF222121),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            title: Text("Discover"),
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 35.0,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Icon(
                Icons.add,
                size: 30.0,
                color: Colors.black,
              ),
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              size: 30.0,
            ),
            title: Text("Inbox"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
              size: 30.0,
            ),
            title: Text("Me"),
          ),
        ],
        currentIndex: i,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
      ),
    );
  }
}
