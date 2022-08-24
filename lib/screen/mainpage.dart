import 'package:flutter/material.dart';
import 'package:tgh_task/widgets/dividers.dart';

import '../widgets/buttons.dart';
import '../widgets/textfields.dart';

class mainpage extends StatelessWidget {
  mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Text Translation"),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: d_line,
              ),
              buttons(),
              h_size20,
              Row(
                children: [
                  Text(
                    "Transilate from",
                    style: TextStyle(fontSize: 10, color: Colors.white70),
                  ),
                  Text(
                    "(Germany)",
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
              h_size10,
              textfields1(),
              h_size20,
              Row(
                children: [
                  Text(
                    "Transilate from",
                    style: TextStyle(fontSize: 10, color: Colors.white70),
                  ),
                  Text(
                    "(Germany)",
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
              h_size10,
              textfield2(),
            ],
          )),

    );
  }
}
