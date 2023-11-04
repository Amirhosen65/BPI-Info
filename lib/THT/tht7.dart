import 'package:flutter/material.dart';

class tht7 extends StatefulWidget {
  const tht7({Key? key}) : super(key: key);

  @override
  _tht7State createState() => _tht7State();
}

class _tht7State extends State<tht7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("7th Semester Book List", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text("THT-7th",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                        child: Text("Hotel Engineering & Maintenance", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69971",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Hospitality Human Resource Management", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69972",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Community-Based Tourism & Entrepreneurship", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69973",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Bar & Restaurant Management", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69982",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Food & Beverage Cost Contro", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69983",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("International Cuisines", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69984",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Food Purchasing & Storage", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69985",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Lodging Service Management", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69986",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Security and Loss Prevention Management", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69987",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Room Division Management", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69988",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Innovation in Tourism", style: TextStyle(fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("69989",style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
