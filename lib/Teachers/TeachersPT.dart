import 'package:flutter/material.dart';


class TeacherPT {
  final String photoUrl;
  final String name;
  final String designation;
  final String phoneNumber;
  final String email;

  TeacherPT ({
    required this.photoUrl,
    required this.name,
    required this.designation,
    required this.phoneNumber,
    required this.email,
  });
}


class TeacherListPT extends StatelessWidget {
  final List<TeacherPT> teachersPT = [
    TeacherPT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1134422518.jpg',
      name: 'ড. প্রকৌ. মোহাঃ এমদাদুল হক',
      designation: 'চিফ ইনস্ট্রাক্টর( টেক /পাওয়ার/ক্যাডার)-প্রথম শিফট',
      phoneNumber: '01552-359 456',
      email: 'emdad359456@gmail.com',
    ),
    TeacherPT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1298634592.jpg',
      name: '	মোঃ মনিরুল ইসলাম',
      designation: 'চীফ ইন্সট্রাক্টর ও বিভাগীয় প্রধান (২য় শিফট)',
      phoneNumber: '01550-006 897',
      email: 'mugdha231212@gmail.com',
    ),
    TeacherPT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/599140486.jpg',
      name: 'মোঃ হাসান আলী',
      designation: 'ইন্সট্রাক্টর (টেক) পাওয়ার',
      phoneNumber: '01918-678 610',
      email: 'hasanali@iut-dhaka.ed',
    ),
    TeacherPT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1124322447.jpg',
      name: 'মোঃ সিজন মিয়া',
      designation: 'জুনিয়র ইন্সট্রাক্টর ( টেক / পাওয়ার )',
      phoneNumber: '01776-050 980',
      email: 'sizan07011@gmail.com',
    ),
    TeacherPT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/932627074.jpg',
      name: 'রবিউল ইসলাম',
      designation: 'জুনিয়র ইন্সট্রাক্টর ( টেক/ পাওয়ার )',
      phoneNumber: '01778-496 983',
      email: 'rabiulislam6983@gmail.com',
    ),
    TeacherPT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'মোঃ মনোয়ার হোসেন',
      designation: 'ইন্সট্রাকটর (রাজস্ব খাতে আসার প্রক্রিয়াধীন)',
      phoneNumber: '01759-181 606',
      email: 'monowar.duet@gmail.com',
    ),
    TeacherPT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1646721899.jpg',
      name: 'মোঃ- হাফিজুর রহমান',
      designation: 'জুনিয়র ইন্সট্রাকটর (রাজস্ব খাতে আসার প্রক্রিয়াধীন)',
      phoneNumber: '01911-905 007',
      email: 'hafizur5465@gmail.com',
    ),
    TeacherPT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1640928381.jpg',
      name: 'মোঃ আব্দুর রহিম',
      designation: 'ইন্সট্রাকটর (রাজস্ব খাতে আসার প্রক্রিয়াধীন)',
      phoneNumber: '01717-636 317',
      email: 'engr.rahimme@gmail.com',
    ),
    TeacherPT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'রোমানা আফরোজ',
      designation: 'জুনি.ইন্সট্রাক্টর (রাজস্ব খাতে আসার প্রক্রিয়াধীন)',
      phoneNumber: '01759-276 759',
      email: 'afrozrumana5@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: ListView.builder(
        itemCount: teachersPT.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Card(
              elevation: 0, // Remove the default card shadow
              child: ListTile(
                leading: CircleAvatar(

                  backgroundImage: NetworkImage(teachersPT[index].photoUrl),
                ),
                title: Text(teachersPT[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(teachersPT[index].designation),
                    Text('Phone: ${teachersPT[index].phoneNumber}'),
                    Text('Email: ${teachersPT[index].email}'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
