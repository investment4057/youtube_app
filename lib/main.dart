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
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.network(
                      'https://uploads-ssl.webflow.com/6003a357378a533a9a2dada7/6056b0fcea0ff7f50c8f4b60_flutter_logo.png',
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Youtubeチャンネル',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.video_call),
                                  Text('登録する'),
                                ],
                              ),
                            ),
                            Text('チャンネル登録者数2,500人')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
