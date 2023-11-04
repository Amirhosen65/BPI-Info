import 'package:flutter/material.dart';


class TeacherENT {
  final String photoUrl;
  final String name;
  final String designation;
  final String phoneNumber;
  final String email;

  TeacherENT ({
    required this.photoUrl,
    required this.name,
    required this.designation,
    required this.phoneNumber,
    required this.email,
  });
}

class TeacherListENT extends StatelessWidget {


  final List<TeacherENT> teachersENT = [
    TeacherENT(
      photoUrl: '',
      name: 'প্রকৌঃ মোঃ আমিরুল ইসলাম',
      designation: 'চীফ ইন্সট্রাক্টর ও বিভাগীয় প্রধান (প্রথম শিফট)',
      phoneNumber: '01711-962 140',
      email: 'amu_amirul@yahoo.com',
    ),
    TeacherENT(
      photoUrl: '',
      name: 'মোঃ নকিবর রহমান',
      designation: 'চীফ ইন্সট্রাক্টর ও বিভাগীয় প্রধান ( ২য় শিফট)',
      phoneNumber: '01711-962 145',
      email: 'engr.nokibor@gmail.com',
    ),
    TeacherENT(
      photoUrl: '',
      name: 'সৈয়দ শাফায়েত-উল-ইসলাম',
      designation: 'ইন্সট্রাক্টর (টেক)',
      phoneNumber: '01794-889 804',
      email: 'syedshafayetshakil@gmail.com',
    ),
    TeacherENT(
      photoUrl: '',
      name: 'জাকির হোসাইন',
      designation: 'জুনিয়র ইন্সট্রাক্টর ( টেক / ইলেকট্রনিক্স )',
      phoneNumber: '01737-483 881',
      email: 'jakirmh31@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: ListView.builder(
        itemCount: teachersENT.length,
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

                  backgroundImage: NetworkImage(teachersENT[index].photoUrl),
                ),
                title: Text(teachersENT[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(teachersENT[index].designation),
                    Text('Phone: ${teachersENT[index].phoneNumber}'),
                    Text('Email: ${teachersENT[index].email}'),
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
