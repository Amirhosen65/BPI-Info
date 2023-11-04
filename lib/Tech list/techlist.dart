import 'package:flutter/material.dart';
import 'package:teacherslist/Tech%20list/cmt.dart';
import 'package:teacherslist/Tech%20list/ct.dart';
import 'package:teacherslist/Tech%20list/ent.dart';
import 'package:teacherslist/Tech%20list/etc.dart';
import 'package:teacherslist/Tech%20list/mrn.dart';
import 'package:teacherslist/Tech%20list/mt.dart';
import 'package:teacherslist/Tech%20list/pt.dart';
import 'package:teacherslist/Tech%20list/rac.dart';
import 'package:teacherslist/Tech%20list/tht.dart';


class techlist extends StatefulWidget {
  const techlist({Key? key}) : super(key: key);

  @override
  _techlistState createState() => _techlistState();
}

class _techlistState extends State<techlist> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("Technology List", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
          itemCount: 9,
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
                      "Electrical Technology"
                          :index==1?
                      "Civil Technology"
                          :index==2?
                      "Computer Science & Technology"
                          :index==3?
                      "Electronics Technology"
                          :index==4?
                      "Mechanical Technology"
                          :index==5?
                      "Power Technology"
                          :index==6?
                      "RAC Technology"
                          :index==7?
                      "Tourism & Hospitality"
                          :"Marine Technology",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    index==0?
                    Icons.electrical_services
                        :index==1?
                    Icons.house
                        :index==2?
                    Icons.computer
                        :index==3?
                    Icons.electrical_services
                        :index==4?
                    Icons.miscellaneous_services
                        :index==5?
                    Icons.power
                        :index==6?
                    Icons.airline_seat_flat
                        :index==7?
                    Icons.tour
                        :Icons.directions_boat,
                  color: Colors.white,
                  ),


                  onTap: (){
                    if(index==0){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>etc()));}
                    if(index==1){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ct()));}
                    if(index==2){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>cmt()));}
                    if(index==3){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ent()));}
                    if(index==4){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>mt()));}
                    if(index==5){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>pt()));}
                    if(index==6){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>rac()));}
                    if(index==7){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>tht()));}
                    if(index==8){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>mrn()));}
                  },
                ),
              ),
            );
          }

      ),
    );
  }
}

