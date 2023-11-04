import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class developer extends StatefulWidget {
  const developer({Key? key}) : super(key: key);

  @override
  _developerState createState() => _developerState();
}

class _developerState extends State<developer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
      body: ListView(
        children: [
          Card(
            elevation: 8,
            child: ListTile(
              title: Text("Md: Amir Hossain"),
              subtitle: Text("Developer"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/others/amir.png"),
              ),
            ),
          ),
          Card(
            elevation: 8,
            child: InkWell(
              onTap: (){
                launch("tell://+8801787-944065");
              },
              child: ListTile(
                title: SelectableText("+8801787-944065"),
                subtitle: Text("Phone"),
                leading: Icon(Icons.phone),
              ),
            ),
          ),
          Card(
            elevation: 8,
            child: InkWell(
              onTap: (){
                launch("amirhosen669222@gmail.com");
              },
              child: ListTile(
                title: SelectableText("amirhosen669222@gmail.com"),
                subtitle: Text("Contact Mail"),
                leading: Icon(Icons.mail_outline),
              ),
            ),
          ),
          Card(
            elevation: 8,
            child: InkWell(
              onTap: (){
                launch("https://www.facebook.com/amirhosen.65");
              },
              child: ListTile(
                title: SelectableText("facebook.com/amirhosen.65"),
                subtitle: Text("Facebook"),
                leading: Icon(Icons.facebook),
              ),
            ),
          )
        ],
      ),

    );
  }
}
