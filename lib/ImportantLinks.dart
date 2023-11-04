import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ImportantLinkPage extends StatelessWidget {
  final List<String> logos = [
    'images/bpi_logo.png',
    'images/WebLogo/bteb_logo.png',
    'images/WebLogo/bteb_logo.png',
    // Add more logo assets as needed
  ];

  final List<String> titles = [
    'BPI',
    'BTEB',
    'BTEB Admission',
    // Add more titles as needed
  ];

  final List<String> urls = [
    'https://bogurapoly.gov.bd/',
    'http://www.bteb.gov.bd',
    'http://btebadmission.gov.bd/website',
    // Add more URLs as needed
  ];

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Important Links'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: logos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              launch(urls[index]);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  logos[index],
                  width: 80.0,
                  height: 80.0,
                ),
                SizedBox(height: 8.0),
                Text(
                  titles[index],
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
