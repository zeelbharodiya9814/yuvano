import 'package:flutter/material.dart';
import 'package:yuvano/views/screens/sixpage.dart';



class Five_Page extends StatefulWidget {
  const Five_Page({Key? key}) : super(key: key);

  @override
  State<Five_Page> createState() => _Five_PageState();
}

class _Five_PageState extends State<Five_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed('Forth_Page');
            });
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: Image.asset("assets/images/house.png"),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 40, left: 10, bottom: 0),
                        child: Text(
                          "Service online",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 10, left: 10, bottom: 0),
                        child: Text(
                          "Find your perfect master and",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                    ],
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 5, left: 10, bottom: 0),
                    child: Text(
                      "book an appointment",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Six_Page(),));
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
                          "Turn your location services",
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Six_Page(),));
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
