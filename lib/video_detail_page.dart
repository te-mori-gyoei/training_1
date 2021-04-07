import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text('動画'),
            onPressed: (){
              //todo ここに押したら反応するコードを書く
            },
          ),
        ),
      )

    );
  }
}