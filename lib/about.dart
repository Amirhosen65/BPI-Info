import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          ListTile(
            title: Text("List of all semester books on all technologies (Polytechnic Series). This product uses various open source softwares."),
            subtitle: Text("© 2021 • AJ Amir . All Rights Reserved"),
          )
        ],
      ),
    );
  }
}
