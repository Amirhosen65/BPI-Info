import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:connectivity/connectivity.dart';


class Blood_Donor extends StatefulWidget {
  @override
  _Blood_DonorState createState() => _Blood_DonorState();
}

class _Blood_DonorState extends State<Blood_Donor> {
  final String websiteUrl = 'https://www.bloodbank.is-great.org'; // Replace with your website URL
  bool _isConnected = true;

  @override
  void initState() {
    super.initState();
    checkConnectivity();
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        _isConnected = result != ConnectivityResult.none;
        showInternetStatusSnackBar();
      });
    });
  }

  Future<void> checkConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      _isConnected = connectivityResult != ConnectivityResult.none;
    });
  }

  void showInternetStatusSnackBar() {
    final snackBar = SnackBar(
      content: Text(
        _isConnected ? 'Internet Connected' : 'No Internet Connection!',
        style: TextStyle(fontSize: 16.0),
      ),
      backgroundColor: _isConnected ? Colors.green : Colors.red,
      duration: Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Bank'),
      ),
      body: _isConnected
          ? WebView(
        initialUrl: websiteUrl,
        javascriptMode: JavascriptMode.unrestricted,
      )
          : Center(
        child: Text(
          'No Internet Connection!',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.red),
        ),

      ),
    );
  }
}
