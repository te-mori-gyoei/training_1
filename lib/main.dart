import 'package:flutter/material.dart';
import 'package:flutter_mori/video_detail_page.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.teal
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('TRIALのアプリケーション'),
          actions: [
            SizedBox(
              width: 40,
              child:FlatButton(
                child: Icon(Icons.youtube_searched_for),
                onPressed: (){
                  // TODO 何か書く
                },
              ),
            ),
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){
                  // TODO 何か書く
                },
              ),
            ),
          ],
          leading: Icon(
            Icons.emoji_emotions
          ),
        ),
        body: Container(
          child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.network(
                              'https://yt3.ggpht.com/ytc/AAUvwnhnsf5cGa5MdsJ79BRg5Wv_3QgV1zNYmxZY7Q4d=s176-c-k-c0x00ffffff-no-rj'
                          ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          const Text('TRIALのアプリケーション'),
                          FlatButton(
                            child:
                                Row(
                                  children:[
                                    Icon(
                                      Icons.emoji_emotions,
                                      color: Colors.green,
                                    ),

                                    Text('登録する'),
                                  ],
                                ),
                                    onPressed: (){
                                     // TODO 何か書く
                                      },

                          ),
                        ],
                      )
                    ],
                  ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () async{
                          // todo 画面遷移
                          await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VideoDetailPage(),
                            ),
                          );
                        },
                        contentPadding:EdgeInsets.all(8),
                        leading: Image.network(
                            'https://pbs.twimg.com/media/EiG9fmRU4AAxYgr?format=jpg&name=medium'
                        ),
                        title: Column(
                            children:[
                              Text('[トライアル入門]ムスブ宮若Project',
                                    style: TextStyle(
                                      fontWeight:FontWeight.w500,
                                    ),
                              ),
                              Row(
                                children: [
                                  Text('1京回再生',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text('5000年前',
                                    style: TextStyle(
                                      fontSize: 13,
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
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}