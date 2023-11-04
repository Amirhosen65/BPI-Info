import 'package:flutter/material.dart';

class tht2 extends StatefulWidget {
  const tht2({Key? key}) : super(key: key);

  @override
  _tht2State createState() => _tht2State();
}

class _tht2State extends State<tht2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("2nd Semester Book List", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text("THT-2nd",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                      child: Text("Front Office Operation-1", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69921",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Food & Beverage Production -1", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69922",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Housekeeping & Laundry Operation -1", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69923",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Food & beverage Service-1", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69924",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Customer Service in Hospitality", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69925",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Communicative English-1", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69926",style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Personality Development & Etiquettes", style: TextStyle(fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("69927",style: TextStyle(fontSize: 25),),
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
