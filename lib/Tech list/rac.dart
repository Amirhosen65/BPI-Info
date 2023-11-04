import 'package:flutter/material.dart';
import 'package:teacherslist/RAC/rac1.dart';
import 'package:teacherslist/RAC/rac2.dart';
import 'package:teacherslist/RAC/rac3.dart';
import 'package:teacherslist/RAC/rac4.dart';
import 'package:teacherslist/RAC/rac5.dart';
import 'package:teacherslist/RAC/rac6.dart';
import 'package:teacherslist/RAC/rac7.dart';


class rac extends StatefulWidget {
  const rac({Key? key}) : super(key: key);

  @override
  _racState createState() => _racState();
}

class _racState extends State<rac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("RAC Technology", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.purple.shade700, borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2,0),
                        blurRadius: 5,
                        spreadRadius: 5
                    )]),
              child: ListTile(
                title: Text(
                  index==0?
                  "1st Semester Book List"
                      :index==1?
                  "2nd Semester Book List"
                      :index==2?
                  "3rd Semester Book List"
                      :index==3?
                  "4th Semester Book List"
                      :index==4?
                  "5th Semester Book List"
                      :index==5?
                  "6th Semester Book List"
                      :"7th Semester Book List",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    index==0?
                    "1"
                        :index==1?
                    "2"
                        :index==2?
                    "3"
                        :index==3?
                    "4"
                        :index==4?
                    "5"
                        :index==5?
                    "6"
                        :"7",
                    style: TextStyle(color: Colors.purple.shade700,fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                onTap: (){
                  if(index==0){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>rac1()));}
                  if(index==1){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>rac2()));}
                  if(index==2){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>rac3()));}
                  if(index==3){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>rac4()));}
                  if(index==4){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>rac5()));}
                  if(index==5){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>rac6()));}
                  if(index==6){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>rac7()));}
                },
              ),
            ),
          );
        },

      ),
    );
  }
}
