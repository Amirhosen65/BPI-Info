import 'package:flutter/material.dart';

class cmt6 extends StatefulWidget {
  const cmt6({Key? key}) : super(key: key);

  @override
  _cmt6State createState() => _cmt6State();
}

class _cmt6State extends State<cmt6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("6th Semester Book List", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text("CMT-6th",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Table(
              border: TableBorder.all(),
              columnWidths: {1: FlexColumnWidth(.30)},
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Subject", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Code",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Principals of Software Engineering", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("66661",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Microcontroller Application", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("66663",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Microprocessor & Interfacing", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("66662",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Optional Subject", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("6666X",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Database Management System", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("66664",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Industrial Management", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("65852",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Environmental Studies", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("64054",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
