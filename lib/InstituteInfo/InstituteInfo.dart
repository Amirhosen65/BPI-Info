import 'package:flutter/material.dart';
import 'package:teacherslist/DepartmentList.dart';
import 'package:teacherslist/InstituteInfo/ContactPage.dart';
import 'package:teacherslist/InstituteInfo/InstituteHead.dart';
import 'package:teacherslist/InstituteInfo/InstituteIntro.dart';
import 'package:teacherslist/InstituteInfo/Mission.dart';
import 'package:teacherslist/InstituteInfo/PhotoGallery.dart';
import 'package:teacherslist/InstituteInfo/TotalSeat.dart';


class InstituteInfo extends StatefulWidget {
  const InstituteInfo({Key? key}) : super(key: key);

  @override
  State<InstituteInfo> createState() => _InstituteInfoState();
}

class _InstituteInfoState extends State<InstituteInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("Institute Info", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
          itemCount: 7,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: size.width*1.0,
                height: 60,
                decoration: BoxDecoration(color: Colors.purple.shade700, borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(4,0),
                          blurRadius: 5,
                          spreadRadius: 5
                      )]),
                child: ListTile(
                  title: Text(
                    index==0?
                    "সংক্ষিপ্ত পরিচিতি"
                        :index==1?
                    "আমাদের লক্ষ্য"
                        :index==2?
                    "প্রতিষ্ঠান প্রধান"
                        :index==3?
                    "শিক্ষকগণ"
                        :index==4?
                    "আসন সংখ্যা"
                        :index==5?
                    "ফটো গ্যালারি"
                        :"যোগাযোগ",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    index==0?
                    Icons.align_vertical_bottom_outlined
                        :index==1?
                    Icons.filter_center_focus
                        :index==2?
                    Icons.account_circle
                        :index==3?
                    Icons.people
                        :index==4?
                    Icons.event_seat
                        :index==5?
                    Icons.photo_album
                        :Icons.contact_mail,
                    color: Colors.white,
                  ),


                  onTap: (){
                    if(index==0){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>InstituteIntro()));}
                    if(index==1){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mission()));}
                    if(index==2){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>InstituteHead()));}
                    if(index==3){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DepartmentList()));}
                    if(index==4){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TotalSeatPage()));}
                    if(index==5){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoGalleryPage()));}
                    if(index==6){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactPage()));}
                    // if(index==7){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>tht()));}
                    // if(index==8){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>mrn()));}
                  },
                ),
              ),
            );
          }

      ),
    );
  }
}
