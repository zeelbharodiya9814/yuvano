import 'package:flutter/material.dart';

import 'forthpage.dart';


class Third_Page extends StatefulWidget {
  const Third_Page({Key? key}) : super(key: key);

  @override
  State<Third_Page> createState() => _Third_PageState();
}

class _Third_PageState extends State<Third_Page> {

  DateTime datetime = DateTime.now();

  List<String> month = [
    'Jan',
    'Fab',
    'Mar',
    'Apr',
    'May',
    'June',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];


  List<String> we = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday"
    "Saturday"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed('Second_Page');
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
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Icon(Icons.add,color: Colors.transparent,),
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
                          "Add birthday and bio",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 10, left: 17, bottom: 3),
                        child: Text(
                          "  You must 21 or older to book on simply",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
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
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "${datetime.weekday},${month[datetime.month - 1]} - ${datetime.day} - ${datetime.year}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 10),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        maxLines: 3,
                        // controller: authorcontroller,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter bio and char...";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            // num = val;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: "Add bio and adds character",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            )),
                      ),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Forth_Page(),));
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
