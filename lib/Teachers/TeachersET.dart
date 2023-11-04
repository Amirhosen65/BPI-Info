import 'package:flutter/material.dart';


class TeacherELT {
  final String photoUrl;
  final String name;
  final String designation;
  final String phoneNumber;
  final String email;

  TeacherELT ({
    required this.photoUrl,
    required this.name,
    required this.designation,
    required this.phoneNumber,
    required this.email,
  });
}

class TeacherListELT extends StatelessWidget {
  final List<TeacherELT> teachersELT = [
    TeacherELT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'মোঃ আব্দুল হালিম সরকার',
      designation: 'চিফ ইনস্ট্রাক্টর (প্রথম শিফট)',
      phoneNumber: '01718-406 992',
      email: 'ahalim1968@yahoo.com',
    ),
    TeacherELT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1471213501.jpg',
      name: 'প্রকৌঃ মোঃ সাজ্জাদ কবির',
      designation: 'ইন্সট্রাক্টর ও বিভাগীয় প্রধান (২য় শিফট)',
      phoneNumber: '01711-666 404',
      email: 'skbir395@gmail.com',
    ),
    TeacherELT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1556806070.jpg',
      name: 'মোঃ মোস্তফিজুর রহমান',
      designation: 'ইন্সট্রাক্টর',
      phoneNumber: '01912-850 804',
      email: 'mostafiz.bgr@gmail.com',
    ),
    TeacherELT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1332250056.jpg',
      name: 'সুমনা আকতার',
      designation: 'জুনিয়র ইন্সট্রাক্টর',
      phoneNumber: '01675-393 997',
      email: 'sumanaakter.eee@gmail.com',
    ),
    TeacherELT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/66766870.jpg',
      name: 'মোঃ ইমরান হোসেন',
      designation: 'জুনিয়র ইন্সট্রাক্টর ( স্টেপ প্রজেক্ট )',
      phoneNumber: '01727-023 423',
      email: 'imran.hossain.polash@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: ListView.builder(
        itemCount: teachersELT.length,
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

                  backgroundImage: NetworkImage(teachersELT[index].photoUrl),
                ),
                title: Text(teachersELT[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(teachersELT[index].designation),
                    Text('Phone: ${teachersELT[index].phoneNumber}'),
                    Text('Email: ${teachersELT[index].email}'),
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
