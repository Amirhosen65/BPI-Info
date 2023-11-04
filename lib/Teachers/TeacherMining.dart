import 'package:flutter/material.dart';

class TeacherMINE {
  final String photoUrl;
  final String name;
  final String designation;
  final String phoneNumber;
  final String email;

  TeacherMINE ({
    required this.photoUrl,
    required this.name,
    required this.designation,
    required this.phoneNumber,
    required this.email,
  });
}

class TeacherListMining extends StatelessWidget {

  final List<TeacherMINE> teachersMINE = [
    TeacherMINE(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/2030501285.jpg',
      name: 'মোঃ- শফিউল আল আজিজ',
      designation: 'চিফ ইনস্ট্রাক্টর (উভয় শিফট)',
      phoneNumber: '01712-433 125',
      email: 'azizshofiul@gmail.com',
    ),
    TeacherMINE(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/2014626660.jpg',
      name: 'মোঃ মাজেদুর রহমান',
      designation: 'ইন্সট্রাকটর ( STEP To Revenue on Process)',
      phoneNumber: '01717-795 690',
      email: 'majedur6871@gmail.com',
    ),
    TeacherMINE(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1043065003.jpg',
      name: 'মোঃ- নূরনবী আলী',
      designation: 'ইন্সট্রাকটর (STEP To Revenue on Process)',
      phoneNumber: '01717-816 212',
      email: 'nurnabi.rugm@gmail.com',
    ),
    TeacherMINE(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'মোঃ- খলিলুর রহমান',
      designation: 'জুনি.ইন্সট্রাকটর (STEP To Revenue on Process)',
      phoneNumber: '01737-389 435',
      email: 'mkhalilbpi@gmail.com',
    ),
    TeacherMINE(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'বিথী খাতুন',
      designation: 'জুনি.ইন্সট্রাকটর (STEP To Revenue on Process)',
      phoneNumber: '01739-768 977',
      email: 'bithesarker2@gmail.com',
    ),
    TeacherMINE(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'মোঃ- সাজেদুর রহমান',
      designation: 'জুনি.ইন্সট্রাকটর (STEP To Revenue on Process)',
      phoneNumber: '01912-391 049',
      email: 'sazedbpi40@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: ListView.builder(
        itemCount: teachersMINE.length,
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

                  backgroundImage: NetworkImage(teachersMINE[index].photoUrl),
                ),
                title: Text(teachersMINE[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(teachersMINE[index].designation),
                    Text('Phone: ${teachersMINE[index].phoneNumber}'),
                    Text('Email: ${teachersMINE[index].email}'),
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
