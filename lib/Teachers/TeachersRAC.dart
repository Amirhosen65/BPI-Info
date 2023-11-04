import 'package:flutter/material.dart';

class TeacherRAC {
  final String photoUrl;
  final String name;
  final String designation;
  final String phoneNumber;
  final String email;

  TeacherRAC ({
    required this.photoUrl,
    required this.name,
    required this.designation,
    required this.phoneNumber,
    required this.email,
  });
}

class TeacehersListRAC extends StatelessWidget {
  final List<TeacherRAC> teachersRAC = [
    TeacherRAC(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/458163177.jpg',
      name: 'মোঃ রেজাউল করিম',
      designation: 'চিফ ইন্সট্রাক্টর (টেক)',
      phoneNumber: '01712-502 242',
      email: 'rezaulkarimme97@gmail.com',
    ),
    TeacherRAC(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1588204883.jpeg',
      name: 'মেহেদী হাসান',
      designation: 'ইন্সট্রাক্টর (টেক)',
      phoneNumber: '01519-330 466',
      email: 'mehedirac09@gmail.com',
    ),
    TeacherRAC(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1564786859.jpg',
      name: 'মোছাঃ তাসলিমা খাতুন',
      designation: 'জুনিয়র ইন্সট্রাক্টর ( টেক / আরএসি )',
      phoneNumber: '01786-669 690',
      email: 'taslimatoma.rac.7723@gmail.com',
    ),
    TeacherRAC(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'মোঃ নুর জামান লিটু',
      designation: 'জুনি.ইন্সট্রাকটর (রাজস্ব খাতে আসার প্রক্রিয়াধীন)',
      phoneNumber: '01723-631 118',
      email: 'nurlitu91@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: ListView.builder(
        itemCount: teachersRAC.length,
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

                  backgroundImage: NetworkImage(teachersRAC[index].photoUrl),
                ),
                title: Text(teachersRAC[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(teachersRAC[index].designation),
                    Text('Phone: ${teachersRAC[index].phoneNumber}'),
                    Text('Email: ${teachersRAC[index].email}'),
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
