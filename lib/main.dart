import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless widget"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(title: new Text("I Love Flutter", style: new TextStyle(
                color: Colors.grey, fontSize: 30.0
              ),),icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent,)),
              new MyCard(title: new Text("I Like this video", style: new TextStyle(
              color: Colors.grey, fontSize: 30.0
              ),),icon: new Icon(Icons.thumb_up, size: 40.0,color: Colors.blueAccent,),),
              new MyCard(title: new Text("Next Video", style: new TextStyle(
                  color: Colors.grey, fontSize: 30.0
              ),),icon: new Icon(Icons.queue_play_next, size: 40.0,color: Colors.brown,),)
            ],
        ),
      ),
      )
    );
  }
}

class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;
  
  MyCard({this.title ,this.icon});
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[this.title, this.icon],
          ),
        )
      ),
    );
  }
}