import 'package:flutter/material.dart';
import 'package:yuvano/views/screens/sevenpage.dart';

class Six_Page extends StatefulWidget {
  const Six_Page({Key? key}) : super(key: key);

  @override
  State<Six_Page> createState() => _Six_PageState();
}

class _Six_PageState extends State<Six_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Seven_Page(),));
              });
            },
              child: Icon(Icons.arrow_forward_ios)),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [

          Container(
            height: 900,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)),
            ),
          ),

          Container(
            // height: 315,
            child: ClipRRect(
                child: Image.asset("assets/images/pool.png")),
          ),
        ],
      ),
    );
  }
}
