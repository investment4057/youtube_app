import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: Text('Youtubeアプリ'),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: TextButton(
                onPressed: () {},
                child: Icon(Icons.search),
              ),
            ),
            SizedBox(
              width: 44,
              child: TextButton(
                onPressed: () {},
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
        body: Container(),
      ),
    );
  }
}
