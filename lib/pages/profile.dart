import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Developer Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ITM, Gida, Gorakhpur, U.P."),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Developer Details",
            textScaleFactor: 1.5,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            // textDirection: TextDirection.rtl,
            // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            // border:TableBorder.all(width: 2.0,color: Colors.red),
            children: [
              TableRow(children: [
                Text(
                  "Pranshu Pandey",
                  textScaleFactor: 1,
                ),
                Text("CSE", textScaleFactor: 1),
                Text("pranshupandey069@gmail.com", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Shubhanshu Pathak", textScaleFactor: 1),
                Text("CSE", textScaleFactor: 1),
                Text("shubhanshucs110@gmail.com", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Shivadatt Dubey", textScaleFactor: 1),
                Text("CSE", textScaleFactor: 1),
                Text("shivadattd@gmail.com", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Manish Kumar Gond", textScaleFactor: 1),
                Text("CSE", textScaleFactor: 1),
                Text("manishitm120@gmail.com", textScaleFactor: 1),
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
