import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
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
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 44,
              child: TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Image.network(
                'https://blog-media.startribune.com/randball/wp-content/uploads/2020/09/30104153/youtubetv.png',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '【Flutter】Youtubeアプリトレース part1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text('290回・3日前'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.audiotrack,
                          size: 30.0,
                        ),
                        Text('10'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.audiotrack,
                          size: 30.0,
                        ),
                        Text('低評価'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.ios_share,
                          size: 30.0,
                        ),
                        Text('共有'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.post_add,
                          size: 30.0,
                        ),
                        Text('保存'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.flag,
                          size: 30.0,
                        ),
                        Text('報告'),
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
