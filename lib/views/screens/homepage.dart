import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  String dropdownvalue = 'India (+91)';

  var items = [
    'India (+91)',
    'Australia (+61)',
    'Canada (+1)',
    'New Zeland (+64)',
    'United Kingdom (+44)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                       padding: const EdgeInsets.only(top: 60,left: 20,bottom: 10),
                       child: Text(
                         "What's your phone\nnumber?",
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 19,
                             fontWeight: FontWeight.bold),
                       ),
                     ),
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15.0, right: 15),
                   child: Card(
                     elevation: 5,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15)),
                     child: Container(
                       width: double.infinity,
                       height: 57,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 15.0),
                         child: DropdownButton(
                           value: dropdownvalue,
                           icon: Padding(
                             padding: const EdgeInsets.only(left: 120.0),
                             child: Icon(Icons.keyboard_arrow_down),
                           ),
                           items: items.map((String items) {
                             return DropdownMenuItem(
                               value: items,
                               child: Text(items),
                             );
                           }).toList(),
                           onChanged: (String? newValue) {
                             setState(() {
                               dropdownvalue = newValue!;
                             });
                           },
                         ),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15.0, right: 15),
                   child: Card(
                     elevation: 5,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15)),
                     child: TextFormField(
                       // controller: authorcontroller,
                       textInputAction: TextInputAction.next,
                       validator: (val) {
                         if (val!.isEmpty) {
                           return "Enter num...";
                         }
                       },
                       onSaved: (val) {
                         setState(() {
                           // num = val;
                         });
                       },
                       decoration: InputDecoration(
                           prefixIcon: Icon(
                             Icons.call,
                             color: Colors.green,
                           ),
                           hintText: "Mobile number",
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
                 Padding(
                   padding: const EdgeInsets.all(18.0),
                   child: Text(
                     "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Review YUVAANO Terms of Service. ",
                     style: TextStyle(fontSize: 10),
                   ),
                 ),
               ],
             )
         ),
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
                         Navigator.pushNamed(context, 'Second_Page');
                       });
                     },
                     child: Card(
                       elevation: 5,
                       shape:
                       RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                       child: Container(
                         height: 57,
                         alignment: Alignment.center,
                         width: double.infinity,
                         decoration: BoxDecoration(
                           color: Colors.blue[100],
                           borderRadius: BorderRadius.circular(15),
                         ),
                         child: Text("Continue",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15.0, right: 15,bottom: 25,top: 5),
                   child: Card(
                     elevation: 5,
                     shape:
                     RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                     child: Container(
                       height: 57,
                       alignment: Alignment.center,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Text("Do this later",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
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
