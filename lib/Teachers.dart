import 'package:flutter/material.dart';

class Teacher {
  final String photoUrl;
  final String name;
  final String designation;
  final String phoneNumber;
  final String email;

  Teacher({
    required this.photoUrl,
    required this.name,
    required this.designation,
    required this.phoneNumber,
    required this.email,
  });
}

class TeachersList extends StatelessWidget {
  final List<Teacher> teachers = [
    Teacher(
      photoUrl: 'images/CT_Teacher/abdullah.png',
      name: 'মোঃ আব্দুল্লাহ আল মামুন',
      designation: 'ইন্সট্রাক্টর ও বিভাগীয় প্রধান (প্রথম শিফট)',
      phoneNumber: '01715-547 479',
      email: 'engr.aamamun@gmail.com',
    ),
    Teacher(
      photoUrl: 'images/CT_Teacher/nurul_amin.png',
      name: 'মোঃ- নুরুল আমিন',
      designation: 'ইন্সট্রাক্টর ও বিভাগীয় প্রধান ( ২য় শিফট)',
      phoneNumber: '01798-101 068',
      email: 'mdnurulamin3781@gmail.com',
    ),
    Teacher(
      photoUrl: 'images/CT_Teacher/nasim_huda.png',
      name: 'মোঃ নাছিম হুদা',
      designation: 'জুনিয়র ইন্সট্রাক্টর',
      phoneNumber: '01740-116 466',
      email: 'nasimsaebwdb@gmail.com',
    ),
    Teacher(
      photoUrl: 'images/CT_Teacher/sultana_nasrin.png',
      name: 'মোছাঃ- সুলতানা নাসরিন',
      designation: 'জুনিয়র ইন্সট্রাক্টর',
      phoneNumber: '01738-541 734',
      email: 'juthy0386@gmail.com',
    ),
    Teacher(
      photoUrl: 'images/CT_Teacher/habibur.png',
      name: 'মোঃ- হাবিবুর রহমান',
      designation: 'জুনি.ইন্সট্রাকটর (STEP To Revenue on Process)',
      phoneNumber: '01717-842 852',
      email: 'habibureng4@gmail.com',
    ),
    // Add more teachers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: ListView.builder(
        itemCount: teachers.length,
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

                  backgroundImage: AssetImage(teachers[index].photoUrl),
                ),
                title: Text(teachers[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(teachers[index].designation),
                    Text('Phone: ${teachers[index].phoneNumber}'),
                    Text('Email: ${teachers[index].email}'),
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
