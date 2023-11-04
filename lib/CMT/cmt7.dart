import 'package:flutter/material.dart';

class cmt7 extends StatefulWidget {
  const cmt7({Key? key}) : super(key: key);

  @override
  _cmt7State createState() => _cmt7State();
}

class _cmt7State extends State<cmt7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("7th Semester Book List", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text("CMTT-7th",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                      child: Text("System Analysis & Design", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("66671",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("E‐Commerce & CMS", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("66674",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Network Administration & Services", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("66672",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Cyber Security & Ethics", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("66675",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Innovation & Entrepreneurship", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("65853",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Apps Development Project", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("66673",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Optional Subject‐II", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("6667X",style: TextStyle(fontSize: 25),),
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
