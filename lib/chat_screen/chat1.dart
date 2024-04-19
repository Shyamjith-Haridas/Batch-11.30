import 'dart:developer';

import 'package:flutter/material.dart';

class ChatscreenOne extends StatelessWidget {
  const ChatscreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (_, index) {
          return Container(
            height: 80,
          );
        },
        separatorBuilder: (_, index) {
          return Divider(
            height: 1,
            thickness: 2,
            color: Colors.grey[300],
          );
        },
        itemCount: 20,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () {
          log("button tap function..");
        },
        tooltip: "hello",
        foregroundColor: Colors.red,
        backgroundColor: Colors.green.shade300,
        hoverColor: Colors.blue,
        child: Icon(Icons.message),
      ),
    );
  }
}

/*
 ListView.builder(
        itemBuilder: (_, index) {
          return Container(
            height: 100,
            width: double.infinity,
            color: Colors.yellow,
            margin: EdgeInsets.all(5),
          );
        },
        itemCount: 15,
      ),
*/
