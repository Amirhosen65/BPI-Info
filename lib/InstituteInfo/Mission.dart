import 'package:flutter/material.dart';

class Mission extends StatefulWidget {
  const Mission({Key? key}) : super(key: key);

  @override
  State<Mission> createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('আমাদের লক্ষ্'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/campus_images/vission.jpg',
              ),
              SizedBox(height: 10),
              Text(
                '“বাংলাদেশের প্রযুক্তিগত এবং আর্থ সামাজিক উন্নয়নে অবদান রাখার জন্য ব্যাপকভাবে শিল্পের সঙ্গে মান সম্মত শিক্ষা ও প্রশিক্ষণ, সঠিক নির্দেশনা এবং পরামর্শ, সহযোগিতা প্রদানের মাধ্যমে বগুড়া পলিটেকনিক ইন্সটিটিউটকে স্বনির্ভরশীল প্রমাণ করা।”', textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
