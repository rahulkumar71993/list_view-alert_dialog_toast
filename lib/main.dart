import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:toast/toast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: new Text("List View"),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, position) {
            return ListTile(
              title: Text("123456"),
              onTap: () {
                uyi(position, context);
              },
            );
          },
        ),
      ),
    );
  }

  void uyi(int position, BuildContext context) {
    print('data  ' + position.toString());
    Toast.show(position.toString(), context,
        duration: Toast.LENGTH_LONG, gravity: Toast.TOP);
    showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text("Counting Number "),
          content: new Text("You clicked $position Number of item"),
        ));
  }
}
