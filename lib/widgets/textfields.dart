import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';

import 'dividers.dart';

class textfields1 extends StatefulWidget {
  textfields1({Key? key}) : super(key: key);

  @override
  State<textfields1> createState() => _textfields1State();
}

class _textfields1State extends State<textfields1> {
  TextEditingController _textlength = TextEditingController();
  String textlength='0';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white12,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextField(
              style: TextStyle(color: Colors.white),
              controller: _textlength,
              maxLines: 5,
              expands: false,
              decoration: InputDecoration(
                hintText: "hello!",
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
              ),
              onChanged:(String) {
                setState((){
                  textlength=_textlength.text.length.toString();

                });
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                d_line,
                Text("$textlength/2000",
                    style: TextStyle(fontSize: 10, color: Colors.white70))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class textfield2 extends StatefulWidget {
  textfield2({Key? key}) : super(key: key);

  @override
  State<textfield2> createState() => _textfield2State();
}

class _textfield2State extends State<textfield2> {
  TextEditingController _textlength = TextEditingController();
  String textlengt='0';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white12,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextField(
              style: TextStyle(color: Colors.white),
              controller: _textlength,
              maxLines: 5,
              expands: false,
              decoration: InputDecoration(
                hintText: "transilated text!",
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
              ),
              onChanged: (String){
                setState((){
                  textlengt=_textlength.text.length.toString();
                });
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                d_line,
                Text("$textlengt/2000",
                    style: TextStyle(fontSize: 10, color: Colors.white70))
              ],
            )
          ],
        ),
      ),
    );
  }
}
