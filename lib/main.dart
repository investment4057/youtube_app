import 'package:flutter/material.dart';

import 'video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items =
      List<String>.generate(10000, (i) => '【Flutter】Youtubeアプリトレース part$i');

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
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoDetailPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                        'https://blog-media.startribune.com/randball/wp-content/uploads/2020/09/30104153/youtubetv.png',
                      ),
                      title: Column(
                        children: [
                          Text(
                            items[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: Text(
                                  '290回',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Text(
                                '3日前',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
