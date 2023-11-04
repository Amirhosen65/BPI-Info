import 'package:flutter/material.dart';
import 'package:teacherslist/BloodDonor.dart';
import 'package:teacherslist/CGPA_Calculator.dart';
import 'package:teacherslist/DepartmentList.dart';
import 'package:teacherslist/ImportantLinks.dart';
import 'package:teacherslist/InstituteInfo/InstituteInfo.dart';
import 'package:teacherslist/NoticePage.dart';
import 'package:teacherslist/Notification.dart';
import 'package:teacherslist/Result.dart';
import 'package:teacherslist/THT/ComplainBox.dart';
import 'package:teacherslist/Tech%20list/techlist.dart';
import 'package:teacherslist/about.dart';
import 'package:teacherslist/developer.dart';
import 'package:teacherslist/Notification2.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        final value = await
        showDialog<bool>(context: context, builder: (builder){
        return AlertDialog(
          title: Text('BPI Info'),
          content: Text("Do you want to Exit?"),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text("No")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            }, child: Text("Yes"))
          ],
        );
        });
        if(value!= null){
          return Future.value(value);
        }else{
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BPI Info')),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  NoticeShowPage(noticeList: [],)),
              );
              }, icon: Icon(Icons.notifications_active))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text("BPI Info",style: TextStyle(fontSize: 20),),
                accountEmail: Text("Bogura Polytechnic Institute",style: TextStyle(fontSize: 16),),
                decoration: BoxDecoration(color: Colors.purple),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/bpi_logo.png"),
                ),
              ),
              ListTile(
                title: Text("Home", style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 20),),
                leading: Icon(Icons.home, color: Colors.purple,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Settins", style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 20),),
                leading: Icon(Icons.settings, color: Colors.purple,),
                onTap: (){

                },
              ),
              Divider(),
              ListTile(
                title: Text("About", style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 20),),
                leading: Icon(Icons.info, color: Colors.purple,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>about()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Contact Us", style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 20),),
                leading: Icon(Icons.contact_support, color: Colors.purple,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>developer()));
                },
              ),
              Divider(),
            ],
          ),
        ),
          body: GridView.count(
            crossAxisCount: 3,
            padding: EdgeInsets.all(16.0),
            children: [
              HomeGridItem(
                title: 'Institute Info',
                icon: Icons.school,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InstituteInfo()),
                  );
                },
              ),
              HomeGridItem(
                title: 'Departments',
                icon: Icons.account_tree,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DepartmentList()),
                  );
                },
              ),
              HomeGridItem(
                title: 'Book List',
                icon: Icons.library_books,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => techlist()),
                  );
                },
              ),
              HomeGridItem(
                title: 'CGPA Calculator',
                icon: Icons.calculate,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CgpaCalculatorScreen()),
                  );
                },
              ),
              HomeGridItem(
                title: 'Results',
                icon: Icons.rate_review,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebsiteScreen()),
                  );
                },
              ),
              HomeGridItem(
                title: 'Important Links',
                icon: Icons.link,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ImportantLinkPage()),
                  );
                },
              ),
              HomeGridItem(
                title: 'Blood Bank',
                icon: Icons.bloodtype,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Blood_Donor()),
                  );
                },
              ),
              HomeGridItem(
                title: 'Complain Box',
                icon: Icons.message,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ComplainPage()),
                  );
                },
              ),
            ],
          ),

      ),
    );
  }
}

class HomeGridItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  HomeGridItem({required this.title, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.purple,),
            SizedBox(height: 8),
            Text(
              title, textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.purple, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}




