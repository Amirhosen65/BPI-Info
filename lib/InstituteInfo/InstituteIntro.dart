import 'package:flutter/material.dart';

class InstituteIntro extends StatefulWidget {
  const InstituteIntro({Key? key}) : super(key: key);

  @override
  State<InstituteIntro> createState() => _InstituteIntroState();
}

class _InstituteIntroState extends State<InstituteIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('সংক্ষিপ্ত পরিচিতি'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/campus_iamge.jpg',

              ),
              SizedBox(height: 10),
              Text(
                'বগুড়া পলিটেকনিক ইন্সটিটিউট গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের শিক্ষা মন্ত্রণালয়ের কারিগরি শিক্ষা অধিদপ্তরাধীন একটি সরকারী শিক্ষা প্রতিষ্ঠান। এতে বাংলাদেশের কারিগরি শিক্ষা বোর্ড কর্তৃক ৪ বছর মেয়াদি ডিপ্লোমা-ইন-ইঞ্জিনিয়ারিং শিক্ষা কার্যক্রম পরিচালিত হয়। ঐতিহ্যবাহী বগুড়া শহরের প্রবেশ পথে বগুড়া পুলিশ লাইন্স-এর বিপরীতে শেরপুর রোডে শোভনীয় দালান কোঠায় সজ্জিত ঐতিহ্যবাহী বগুড়া পলিটেকনিক ইন্সটিটিউট অবস্থিত। ১৯৬২ সালে বগুড়া শহরের কেন্দ্রস্থলে ( সাত মাথায় ) তদানিন্তন এডওয়ার্ড ইন্ডাষ্ট্রিয়াল স্কুলের প্রাচীর ঘেরা ভবনে ইন্সটিটিউট এর কার্যক্রম শুরু হয়। সিভিল ও পাওয়ার টেকনোলজি নিয়েই যাত্রা শুরু করেছিল এই প্রতিষ্ঠানটি।'
                'পরবর্তিতে কারিগরি শিক্ষার প্রসারের লক্ষ্যে বগুড়া পলিটেকনিক ইন্সটিটিউট নামকরণে শেরপুর রোডের বর্তমান ভোকেশনাল টিচার্স ট্রেনিং ইন্সটিটিউট ক্যাম্পাসে বিভিন্ন টেকনোলজির সমন্বয়ে ইন্সটিটিউট স্থানান্তর করা হয় এবং ১৯৭৭ সালে বর্তমান ক্যাম্পাসে ইন্সটিটিউটের যাত্রা শুরু হয়। সরকারি সিদ্ধান্তের আলোকে পরবর্তীতে আরও টেকনোলজির সংযোজন করা হয়। বিশ্ব-ব্যাংকের আইডিএ ক্রেডিটের অধীনে নির্মিত হয় বর্তমান প্রতিষ্ঠানের অবকাঠামো।'
                'বগুড়া পলিটেকনিক ইন্সটিটিউট সবুজ ছায়া ঘেরা বৃক্ষরাজীতে পরিবেষ্টিত এবং ইন্সটিটিউটের একাডেমিক কাম প্রশাসনিক ভবনের সামনে আলোক সজ্জায় সজ্জিত ফোয়ারা সম্বলিত মনোমুগ্ধকর ফুলের বাগান অবস্থিত। ১৮ একর জমির উপর নির্মিত এ প্রতিষ্ঠানটিতে সুরম্য ভবন সমূহের ৩ তলা একাডেমিক কাম প্রশাসনিক ভবন, আবাসিক ভবন, ছাত্রাবাস, ছাত্রীনিবাস ইত্যাদির সন্নিবেশ ঘটেছে। ইন্সটিটিউটের প্রবেশমুখে গেটে, একাডেমিক কাম প্রশাসনিক ভবনের গেটে এবং ছাত্রাবাস ও ছাত্রীনিবাসের প্রবেশের গেটসমূহে রয়েছে সুসজ্জিত তোরুণ ও কর্তব্যনিষ্ঠ নিরাপত্তা প্রহরী, যারা সার্বক্ষনিক প্রয়োজনীয় যোগাযোগের মাধ্যমসহ নিরাপত্তা ও আগমনকারীদের তথ্য সংগ্রহ করেছে।', textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

