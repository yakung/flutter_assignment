import 'package:flutter/material.dart';
import 'detail_screen_dart.dart';


class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),// Appbar
      body: Center(
        child: FlatButton(child:Text("go to detail"),
        onPressed: () {
          //Navigator.pushName(context, "/second");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(title: "Hello"),
            ), 
          );
        },
        ) //Text("First Screen"),
      )// center
    );//scafford
  }
}