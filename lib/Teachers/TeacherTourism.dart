import 'package:flutter/material.dart';

class TeacherTRMT {
  final String photoUrl;
  final String name;
  final String designation;
  final String phoneNumber;
  final String email;

  TeacherTRMT ({
    required this.photoUrl,
    required this.name,
    required this.designation,
    required this.phoneNumber,
    required this.email,
  });
}

class TeacherListTRMT extends StatelessWidget {
  final List<TeacherTRMT> teachersTRMT = [
    TeacherTRMT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'মোঃ আব্দুল হালিম সরকার',
      designation: 'চিফ ইন্সট্রাক্টর ও বিভাগীয় প্রধান',
      phoneNumber: '01718-406 992',
      email: '-',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: ListView.builder(
        itemCount: teachersTRMT.length,
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

                  backgroundImage: NetworkImage(teachersTRMT[index].photoUrl),
                ),
                title: Text(teachersTRMT[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(teachersTRMT[index].designation),
                    Text('Phone: ${teachersTRMT[index].phoneNumber}'),
                    Text('Email: ${teachersTRMT[index].email}'),
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
