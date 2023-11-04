import 'package:flutter/material.dart';


class TeacherMT {
  final String photoUrl;
  final String name;
  final String designation;
  final String phoneNumber;
  final String email;

  TeacherMT ({
    required this.photoUrl,
    required this.name,
    required this.designation,
    required this.phoneNumber,
    required this.email,
  });
}

class TeachersListMT extends StatelessWidget {
  final List<TeacherMT> teachersMT = [
    TeacherMT(
      photoUrl: 'images/MT_Tc/shafiul.png',
      name: 'মোঃ- শফিউল আল আজিজ',
      designation: 'চিফ ইন্সট্রাক্টর ও বিভাগীয় প্রধান (প্রথম শিফট)',
      phoneNumber: '01712-433 125',
      email: 'azizshofiul@gmail.com',
    ),
    TeacherMT(
      photoUrl: 'images/MT_Tc/mostafizur.png',
      name: 'মোঃ- মোস্তাফিজুর রহমান',
      designation: 'চীফ ইন্সট্রাক্টর ও বিভাগীয় প্রধান (২য় শিফট)',
      phoneNumber: '01717-517 438',
      email: 'mithubpi1964@gmail.com',
    ),
    TeacherMT(
      photoUrl: 'images/MT_Tc/shofiqul.png',
      name: 'মোঃ- শফিকুল ইসলাম প্রামানিক',
      designation: 'চিফ ইনস্ট্রাক্টর (প্রথম শিফট)',
      phoneNumber: '01706-371 707',
      email: 'shafiqbd1978@yahoo.com',
    ),
    TeacherMT(
      photoUrl: 'images/MT_Tc/lokman.png',
      name: 'মোঃ- লোকমান হাকিম',
      designation: 'ইন্সট্রাক্টর',
      phoneNumber: '01718-754 047',
      email: 'mdlokmanh29@gmail.com',
    ),
    TeacherMT(
      photoUrl: 'images/MT_Tc/robiul.png',
      name: 'মোঃ- রবিউল হাছান',
      designation: 'জুনিয়র ইন্সট্রাক্টর',
      phoneNumber: '01729-570 670',
      email: '	robiul.me05@gmail.com',
    ),
    TeacherMT(
      photoUrl: 'images/MT_Tc/omarfaruk.png',
      name: 'মোঃ- ওমর ফারুক',
      designation: 'ওয়ার্কশপ সুপার (রাজস্ব খাতে আসার প্রক্রিয়াধীন)',
      phoneNumber: '01751-465 799',
      email: 'omarmeruet@gmail.com',
    ),
    TeacherMT(
      photoUrl: 'images/MT_Tc/jahanul.png',
      name: 'মোহাম্মাদ সাহেব জাহানুল হক',
      designation: 'জুনি.ইন্সট্রাকটর (রাজস্ব খাতে আসার প্রক্রিয়াধীন)',
      phoneNumber: '01717-954 350',
      email: 'jahanul.haque350@gmail.com',
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: ListView.builder(
        itemCount: teachersMT.length,
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

                  backgroundImage: AssetImage(teachersMT[index].photoUrl),
                ),
                title: Text(teachersMT[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(teachersMT[index].designation),
                    Text('Phone: ${teachersMT[index].phoneNumber}'),
                    Text('Email: ${teachersMT[index].email}'),
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
