import 'package:flutter/material.dart';

import 'login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = "UI Portfolio";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          canvasColor: Colors.white, primarySwatch: Colors.blue, fontFamily: 'Oxygen'
      ),
      home: HomePage(title: title),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RawMaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
              },
              shape: StadiumBorder(),
              padding: EdgeInsets.all(10.0),

              fillColor: Colors.blue,
              splashColor: Colors.blueAccent,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.assignment_turned_in,
                    color: Colors.deepPurple
                  ),
                  Text(
                    "Login Screen",
                    maxLines: 1,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
