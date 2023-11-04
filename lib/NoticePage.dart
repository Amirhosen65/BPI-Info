import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Notice {
  String title;
  String details;

  Notice(this.title, this.details);
}

class NoticeShowPage extends StatefulWidget {
  final List<Notice> noticeList;

  NoticeShowPage({required this.noticeList});

  @override
  _NoticeShowPageState createState() => _NoticeShowPageState();

  static initializeApp() {}
}

class _NoticeShowPageState extends State<NoticeShowPage> {

  final firebase = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    initializeFirebase();
  }

  void initializeFirebase() async {
    await NoticeShowPage.initializeApp().whenComplete(() {
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notice Board'),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: StreamBuilder<QuerySnapshot>(
              stream: firebase.collection("notice_list").snapshots(),
              builder: (context, snapshot){
                if(snapshot.hasData){
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, i){
                        QueryDocumentSnapshot x = snapshot.data!.docs[i];
                        return ListTile(
                          title: Text(x['notice']),
                          subtitle: Text(x['notice_details']),
                        );
                      }
                  );
                }
                else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
