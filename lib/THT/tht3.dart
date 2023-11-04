import 'package:flutter/material.dart';


class tht3 extends StatefulWidget {
  const tht3({Key? key}) : super(key: key);

  @override
  _tht3State createState() => _tht3State();
}

class _tht3State extends State<tht3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("3rd Semester Book List", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text("THT-3rd",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                      child: Text("Front Office Operation-02", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69931",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Housekeeping & Laundry Operation -2", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69932",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Food & Beverage Service-2", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69934",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Tour Guiding-1", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69935",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Bakery & Pastry Production", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69936",style: TextStyle(fontSize: 25),),
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
