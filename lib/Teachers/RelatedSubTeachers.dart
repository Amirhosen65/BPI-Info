import 'package:flutter/material.dart';


class TeacherReSUB {
  final String photoUrl;
  final String name;
  final String designation;
  final String phoneNumber;
  final String email;

  TeacherReSUB ({
    required this.photoUrl,
    required this.name,
    required this.designation,
    required this.phoneNumber,
    required this.email,
  });
}

class TeacherListReSUB extends StatelessWidget {
  final List<TeacherReSUB> teachersReSUB = [
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1924103223.jpg',
      name: 'সাজু মুহামমদ শাহজাদা',
      designation: 'চিফ ইনস্ট্রাক্টর (নন-টেক), ওসি একাডেমিক',
      phoneNumber: '01712-196 610',
      email: 'sajums10577@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1008593588.jpeg',
      name: 'মোঃ আব্বাছ আলী',
      designation: 'চিফ ইনস্ট্রাক্টর (নন-টেক)',
      phoneNumber: '01716-825 232',
      email: 'aaliripon@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1160083380.jpg',
      name: 'মোঃ- মিজানুর রহমান',
      designation: 'ইন্সট্রাক্টর',
      phoneNumber: '01719-736 649',
      email: 'mijanmath98@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/700423935.jpg',
      name: 'মোঃ- সাইফুল ইসলাম',
      designation: 'ইন্সট্রাক্টর',
      phoneNumber: '01913-279 735',
      email: 'sislamnontech961@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/empty-profile.png',
      name: 'মোঃ জাহাঙ্গীর আলম',
      designation: 'ইন্সট্রাক্টর',
      phoneNumber: '01781-980 824',
      email: 'zahangireco95@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1873011698.jpg',
      name: 'এ.এম. মন্জুরুল কবীর',
      designation: 'জুনিয়র ইন্সট্রাক্টর',
      phoneNumber: '01723-576 703',
      email: 'nayon2005.nk@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/285542598.jpg',
      name: 'মোছাঃ শাহীমা খাতুন',
      designation: 'জুনিয়র ইন্সট্রাক্টর',
      phoneNumber: '01786-811 284',
      email: 'shahimaenglit50@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1159677854.jpg',
      name: 'মোঃ আরিফুল ইসলাম',
      designation: 'জুনিয়র ইন্সট্রাক্টর',
      phoneNumber: '01717-799 940',
      email: 'arifulsony.bd@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/1152479551.jpg',
      name: 'মোঃ মেহেরুল ইসলাম',
      designation: 'জুনিয়র ইন্সট্রাক্টর',
      phoneNumber: '01913-168 560',
      email: 'meherulislambogura@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/756149420.jpg',
      name: 'আফরোজা নাসরিন রুনা',
      designation: 'জুনিয়র ইন্সট্রাক্টর',
      phoneNumber: '01845-696 281',
      email: 'afruzaruna89@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/167709138.jpg',
      name: 'মোঃ- ওবায়দুল্লাহ',
      designation: 'জুনি.ইন্সট্রাক্টর (রাজস্ব খাতে আসার প্রক্রিয়াধীন)',
      phoneNumber: '01992-006 774',
      email: 'obaydullahrs@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/194862065.jpg',
      name: 'দীপু রঞ্জন বর্মা',
      designation: 'জুনিয়র ইন্সট্রাক্টর (রাজস্ব খাতে আসার প্রক্রিয়াধীন',
      phoneNumber: '01736-723 572',
      email: 'dipuranjanbarma1@gmail.com',
    ),
    TeacherReSUB(
      photoUrl: 'https://bogurapoly.gov.bd/files/person/844825769.jpg',
      name: 'পারভীন সুলতানা',
      designation: 'জুনি.ইন্সট্রাক্টর (রাজস্ব খাতে আসার প্রক্রিয়াধীন)',
      phoneNumber: '01710-722 245',
      email: 'parvinsultanabd2@gmail.com',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers List'),
      ),
      body: ListView.builder(
        itemCount: teachersReSUB.length,
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

                  backgroundImage: NetworkImage(teachersReSUB[index].photoUrl),
                ),
                title: Text(teachersReSUB[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(teachersReSUB[index].designation),
                    Text('Phone: ${teachersReSUB[index].phoneNumber}'),
                    Text('Email: ${teachersReSUB[index].email}'),
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
