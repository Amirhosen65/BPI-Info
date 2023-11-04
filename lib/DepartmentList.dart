import 'package:flutter/material.dart';
import 'package:teacherslist/HomeScreen.dart';
import 'package:teacherslist/Teachers.dart';
import 'package:teacherslist/Teachers/RelatedSubTeachers.dart';
import 'package:teacherslist/Teachers/TeacherENT.dart';
import 'package:teacherslist/Teachers/TeacherMining.dart';
import 'package:teacherslist/Teachers/TeacherTourism.dart';
import 'package:teacherslist/Teachers/TeachersCMT.dart';
import 'package:teacherslist/Teachers/TeachersET.dart';
import 'package:teacherslist/Teachers/TeachersMT.dart';
import 'package:teacherslist/Teachers/TeachersPT.dart';
import 'package:teacherslist/Teachers/TeachersRAC.dart';


class DepartmentList extends StatefulWidget {
  const DepartmentList({Key? key}) : super(key: key);

  @override
  State<DepartmentList> createState() => _DepartmentListState();
}

class _DepartmentListState extends State<DepartmentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Department List"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(16.0),
        children: [
          HomeGridItem(
            title: 'Civil Technology',
            icon: Icons.house_outlined,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeachersList()),
              );
            },
          ),
          HomeGridItem(
            title: 'Mechanical Technology',
            icon: Icons.settings,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeachersListMT()),
              );
            },
          ),
          HomeGridItem(
            title: 'Power Technology',
            icon: Icons.car_rental,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeacherListPT()),
              );
            },
          ),
          HomeGridItem(
            title: 'Electrical Technology',
            icon: Icons.lightbulb_outline,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeacherListELT()),
              );
            },
          ),
          HomeGridItem(
            title: 'Electronics Technology',
            icon: Icons.mode_fan_off_outlined,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeacherListENT()),
              );
            },
          ),
          HomeGridItem(
            title: 'Computer Technology',
            icon: Icons.laptop,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeacherListCMT()),
              );
            },
          ),
          HomeGridItem(
            title: 'RAC Technology',
            icon: Icons.ac_unit,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeacehersListRAC()),
              );
            },
          ),
          HomeGridItem(
            title: 'Mining Technology',
            icon: Icons.face_2,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeacherListMining()),
              );
            },
          ),
          HomeGridItem(
            title: 'Tourism And Hospitality',
            icon: Icons.holiday_village,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeacherListTRMT()),
              );
            },
          ),
          HomeGridItem(
            title: 'Related Subject Teachers',
            icon: Icons.library_books,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeacherListReSUB()),
              );
            },
          ),
        ],
      ),
    );
  }
}
