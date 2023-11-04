import 'package:flutter/material.dart';
import 'package:teacherslist/MecT/mt1.dart';
import 'package:teacherslist/MecT/mt2.dart';
import 'package:teacherslist/MecT/mt3.dart';
import 'package:teacherslist/MecT/mt4.dart';
import 'package:teacherslist/MecT/mt5.dart';
import 'package:teacherslist/MecT/mt6.dart';
import 'package:teacherslist/MecT/mt7.dart';


class mt extends StatefulWidget {
  const mt({Key? key}) : super(key: key);

  @override
  _mtState createState() => _mtState();
}

class _mtState extends State<mt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("Mechanical Technology", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mt1()));}
                  if(index==1){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mt2()));}
                  if(index==2){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mt3()));}
                  if(index==3){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mt4()));}
                  if(index==4){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mt5()));}
                  if(index==5){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mt6()));}
                  if(index==6){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mt7()));}
                },
              ),
            ),
          );
        },

      ),
    );
  }
}
