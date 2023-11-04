import 'package:flutter/material.dart';
import 'package:teacherslist/ELT/et2nd.dart';
import 'package:teacherslist/ELT/et3rd.dart';
import 'package:teacherslist/ELT/et4th.dart';
import 'package:teacherslist/ELT/et5th.dart';
import 'package:teacherslist/ELT/et6th.dart';
import 'package:teacherslist/ELT/et7th.dart';
import 'package:teacherslist/ELT/etclist.dart';


class etc extends StatefulWidget {
  const etc({Key? key}) : super(key: key);

  @override
  _etcState createState() => _etcState();
}

class _etcState extends State<etc> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("Electrical Technology", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>etclist()));}
                    if(index==1){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>et2nd()));}
                    if(index==2){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>et3rd()));}
                    if(index==3){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>et4rd()));}
                    if(index==4){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>et5th()));}
                    if(index==5){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>et6th()));}
                    if(index==6){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>et7th()));}
                  },
                ),
              ),
            );
          },

      ),
    );
  }
}
