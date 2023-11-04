import 'package:flutter/material.dart';

class tht4 extends StatefulWidget {
  const tht4({Key? key}) : super(key: key);

  @override
  _tht4State createState() => _tht4State();
}

class _tht4State extends State<tht4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("4th Semester Book List", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Center(child: Text("Couldn't Found",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
        ],
      ),
    );
  }
}
