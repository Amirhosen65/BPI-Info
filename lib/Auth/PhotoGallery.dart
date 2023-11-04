import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PhotoGallery extends StatefulWidget {
  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  bool _isLoading = true;
  List<String> _imageUrls = [];

  @override
  void initState() {
    super.initState();
    _loadImages();
  }

  Future<void> _loadImages() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('photos')
          .orderBy('timestamp', descending: true)
          .get();

      List<String> urls = [];

      for (QueryDocumentSnapshot doc in snapshot.docs) {
        // String? url = doc.data()['url'] as String?;
        // if (url != null) {
        //   urls.add(url);
        // }
      }

      setState(() {
        _imageUrls = urls;
        _isLoading = false;
      });
    } catch (error) {
      print('Error loading images: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
        itemCount: _imageUrls.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return CachedNetworkImage(
            imageUrl: _imageUrls[index]!,
            placeholder: (context, url) => Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

