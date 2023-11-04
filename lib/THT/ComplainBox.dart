import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class ComplainPage extends StatefulWidget {
  @override
  _ComplainPageState createState() => _ComplainPageState();
}

class _ComplainPageState extends State<ComplainPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _complainController = TextEditingController();
  final String _recipientEmail = 'amirhosen669222@gmail.com'; // Replace with your email address
  bool _isSending = false; // Track the sending state

  @override
  void dispose() {
    _subjectController.dispose();
    _complainController.dispose();
    super.dispose();
  }

  Future<void> _sendComplain() async {
    if (_formKey.currentState!.validate()) {
      final smtpServer = gmail('amirhosen669222@gmail.com', 'tgcjgvytfffufegf'); // Replace with your Gmail credentials

      final message = Message()
        ..from = Address('amirhosen669222@gmail.com', 'AJ Amir') // Replace with your name and Gmail address
        ..recipients.add(_recipientEmail)
        ..subject = _subjectController.text
        ..text = _complainController.text;

      try {
        final isConnected = await checkInternetConnection(); // Check internet connection
        if (!isConnected) {
          showNoInternetSnackbar();
          return;
        }

        setState(() {
          _isSending = true; // Show progress indicator
        });

        final sendReport = await send(message, smtpServer);
        print('Message sent: ${sendReport.toString()}');
        // Show a success message to the user
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Success'),
              content: Text('Your complain has been sent successfully.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _subjectController.clear();
                    _complainController.clear();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } catch (e) {
        print('Error: $e');
        // Show an error message to the user
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('An error occurred while sending your complain.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } finally {
        setState(() {
          _isSending = false; // Hide progress indicator
        });
      }
    }
  }

  Future<bool> checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  void showNoInternetSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('No internet connection. Please connect internet.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complain Box'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _subjectController,
                decoration: InputDecoration(
                  labelText: 'Subject (বিষয়)',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the subject';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _complainController,
                decoration: InputDecoration(
                  labelText: 'Complain (আপনার কমপ্লেইনটি বিস্তারিতভাবে লিখুন',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your complain';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _isSending ? null : _sendComplain, // Disable button while sending
                child: _isSending
                    ? CircularProgressIndicator() // Show progress indicator
                    : Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

