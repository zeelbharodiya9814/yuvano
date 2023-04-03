import 'package:flutter/material.dart';


class Seven_Page extends StatefulWidget {
  const Seven_Page({Key? key}) : super(key: key);

  @override
  State<Seven_Page> createState() => _Seven_PageState();
}

class _Seven_PageState extends State<Seven_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/poolman.jpeg"),
        ],
      ),
    );
  }
}
