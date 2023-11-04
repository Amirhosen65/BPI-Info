import 'package:flutter/material.dart';

class InstituteHead extends StatefulWidget {
  const InstituteHead({Key? key}) : super(key: key);

  @override
  State<InstituteHead> createState() => _InstituteHeadState();
}

class _InstituteHeadState extends State<InstituteHead> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('প্রতিষ্ঠান প্রধান'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/others/principle_image.png',
              ),
              SizedBox(height: 10),
              Text("মোঃ আবু সাইম জাহান",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
              ),
              SelectableText(
                'অধ্যক্ষ (অতিরিক্ত দায়িত্ব)\n'
              'বগুড়া পলিটেকনিক ইন্সটিটিউট, বগুড়া।\n'
              'Mobile: +8801309133819\n'
              'Telephone: +8802588814060',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
