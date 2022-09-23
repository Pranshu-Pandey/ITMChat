import 'package:flutter/material.dart';
import 'package:itmchat/pages/call.dart';
import 'package:itmchat/pages/chat.dart';
import 'package:itmchat/pages/news.dart';
import 'package:itmchat/pages/profile.dart';
import 'package:itmchat/pages/scaner.dart';
import 'package:itmchat/views/signin.dart';

class MyApp extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyApp> {
  int selectedPage = 0;

  final _pageOptions = [Chat(), Call(), News(), Scaner(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.chat,
            color: Colors.white,
          ),
          title: Text('ITM Chat App'),
        ),
        backgroundColor: Colors.white,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat, size: 30), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.call, size: 30), label: 'Call'),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper, size: 30), label: 'News'),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code, size: 30), label: 'Scaner'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, size: 30), label: 'Developer')
          ],
          selectedItemColor: Colors.green,
          elevation: 5.0,
          unselectedItemColor: Colors.green[900],
          currentIndex: selectedPage,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ));
  }
}
