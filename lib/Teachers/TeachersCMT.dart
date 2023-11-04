import 'package:flutter/material.dart';


class TeacherCMT {
  final String photoUrl;
  final String name;
  final String designation;
  final String phoneNumber;
  final String email;

  TeacherCMT ({
    required this.photoUrl,
    required this.name,
    required this.designation,
    required this.phoneNumber,
    required this.email,
  });
}


class TeacherListCMT extends StatelessWidget {

  final List<TeacherCMT> teachersCMT = [
    TeacherCMT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1216637784.jpg',
      name: 'মান্না মেহেদি বকুল',
      designation: 'চীফ ইন্সট্রাক্টর ও বিভাগীয় প্রধান (প্রথম শিফট)',
      phoneNumber: '01716-368 649',
      email: 'mehadibakul@gmail.com',
    ),
    TeacherCMT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'নূরজাহান আক্তার',
      designation: 'চীফ ইন্সট্রাক্টর ও বিভাগীয় প্রধান (২য় শিফট)',
      phoneNumber: '01917-326 222',
      email: 'noorjahanci987@gmail.com',
    ),
    TeacherCMT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'উম্মে হাবিবা',
      designation: 'ইন্সট্রাক্টর',
      phoneNumber: '01723-673 632',
      email: 'habiba.ru.bd@gmail.com',
    ),
    TeacherCMT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1058342088.jpg',
      name: 'মোছাঃ মনিরা আকতার',
      designation: 'ইন্সট্রাক্টর',
      phoneNumber: '01670-993 510',
      email: 'monira05109@gmail.com',
    ),
    TeacherCMT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/24382443.jpg',
      name: 'মোছাঃ- মৌসূমী খাতুন',
      designation: 'ইন্সট্রাক্টর',
      phoneNumber: '01781-335 527',
      email: 'moumousumikhatun@gmail.com',
    ),
    TeacherCMT(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/2016591153.jpg',
      name: '	মোঃ হুমায়ন রেজা',
      designation: 'ওর্য়াকশপ সুপারিনটেনডেন্ট (টেক/কম্পিউটার)',
      phoneNumber: '01550-003 700',
      email: 'humayanreza@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: ListView.builder(
        itemCount: teachersCMT.length,
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

                  backgroundImage: NetworkImage(teachersCMT[index].photoUrl),
                ),
                title: Text(teachersCMT[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(teachersCMT[index].designation),
                    Text('Phone: ${teachersCMT[index].phoneNumber}'),
                    Text('Email: ${teachersCMT[index].email}'),
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
