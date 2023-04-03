import 'package:flutter/material.dart';
import 'package:yuvano/views/screens/thirdpage.dart';

import 'fivepage.dart';

class Forth_Page extends StatefulWidget {
  const Forth_Page({Key? key}) : super(key: key);

  @override
  State<Forth_Page> createState() => _Forth_PageState();
}

class _Forth_PageState extends State<Forth_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed('Third_Page');
            });
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Container(
          height: 40,
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 7,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 7,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 7,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.add,
            color: Colors.transparent,
          ),
          SizedBox(
            width: 40,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              flex: 7,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, bottom: 3),
                        child: Text(
                          "Add a picture of youself",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15, bottom: 25, top: 5),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            height: 170,
                            width: 120,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              // color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage("assets/images/userimage.jpeg"),fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add,
                              size: 35,
                            )
                          )),
                    ],
                  ),
                ],
              )),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Five_Page(),
                        ));
                      });
                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        height: 57,
                        alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "Continue(3/3)",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15, bottom: 25, top: 5),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      height: 57,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Do this later",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
