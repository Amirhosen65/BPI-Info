import 'dart:async';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class PhotoGalleryPage extends StatefulWidget {
  @override
  _PhotoGalleryPageState createState() => _PhotoGalleryPageState();
}

class _PhotoGalleryPageState extends State<PhotoGalleryPage> {
  final List<String> imageUrls = [
    'https://bogurapoly.gov.bd/files/gallery/17667946271877576701.jpeg',
    'https://bogurapoly.gov.bd/files/gallery/330306670171008161.jpeg',
    'https://bogurapoly.gov.bd/files/gallery/913611621743266211.jpeg',
    'https://bogurapoly.gov.bd/files/gallery/38688619356216292.jpg',
  ];

  final List<String> captions = [
    'Seminar Room',
    'Students Made Electric Bike',
    '21 February Martyrs Day',
    '7th March, 2033',
  ];

  bool _hasInternetConnection = true;
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    _checkInternetConnection();
    _subscribeToConnectivityChanges();
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> _checkInternetConnection() async {
    try {
      final result = await (Connectivity().checkConnectivity());
      setState(() {
        _hasInternetConnection = (result != ConnectivityResult.none);
      });
    } on Exception catch (_) {
      setState(() {
        _hasInternetConnection = false;
      });
    }
  }

  void _subscribeToConnectivityChanges() {
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        _hasInternetConnection = (result != ConnectivityResult.none);
      });
    });
  }

  void _showNoInternetSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('No internet connection. Please try again later.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: _hasInternetConnection
          ? GridView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: imageUrls.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                captions[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ],
          );
        },
      )
          : Center(
        child: Text(
          'No internet connection.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
