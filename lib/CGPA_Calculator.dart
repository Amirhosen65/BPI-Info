import 'package:flutter/material.dart';

void main() => runApp(CgpaCalculatorApp());

class CgpaCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: CgpaCalculatorScreen(),
    );
  }
}

class CgpaCalculatorScreen extends StatefulWidget {
  @override
  _CgpaCalculatorScreenState createState() => _CgpaCalculatorScreenState();
}

class _CgpaCalculatorScreenState extends State<CgpaCalculatorScreen> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();
  TextEditingController _controller6 = TextEditingController();
  TextEditingController _controller7 = TextEditingController();
  TextEditingController _controller8 = TextEditingController();

  double _totalCgpa = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CGPA Calculator'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Enter Your GPA", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '1st Semester',
              ),
            ),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '2nd Semester',
              ),
            ),
            TextField(
              controller: _controller3,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '3rd Semester',
              ),
            ),
            TextField(
              controller: _controller4,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '4th Semester',
              ),
            ),
            TextField(
              controller: _controller5,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '5th Semester',
              ),
            ),
            TextField(
              controller: _controller6,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '6th Semester',
              ),
            ),
            TextField(
              controller: _controller7,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '7th Semester',
              ),
            ),
            TextField(
              controller: _controller8,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '8th Semester',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _calculateCgpa,
              child: Text('Calculate CGPA'),
            ),
            SizedBox(height: 16),
            Text(
              'Total CGPA: $_totalCgpa',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _clearFields,
              child: Text('Clear'),
            ),
          ],
        ),
      ),
    );
  }

  void _calculateCgpa() {
    if (_controller1.text.isEmpty ||
        _controller2.text.isEmpty ||
        _controller3.text.isEmpty ||
        _controller4.text.isEmpty ||
        _controller5.text.isEmpty ||
        _controller6.text.isEmpty ||
        _controller7.text.isEmpty ||
        _controller8.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please input all semester CGPA.'),
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
      return;
    }

    double weight1 = double.parse(_controller1.text) * 0.05;
    double weight2 = double.parse(_controller2.text) * 0.05;
    double weight3 = double.parse(_controller3.text) * 0.05;
    double weight4 = double.parse(_controller4.text) * 0.1;
    double weight5 = double.parse(_controller5.text) * 0.15;
    double weight6 = double.parse(_controller6.text) * 0.2;
    double weight7 = double.parse(_controller7.text) * 0.25;
    double weight8 = double.parse(_controller8.text) * 0.15;

    double totalCgpa = weight1 + weight2 + weight3 + weight4 + weight5 + weight6 + weight7 + weight8;

    String formattedCgpa = totalCgpa.toStringAsFixed(2);
    double roundedCgpa = double.parse(formattedCgpa);

    if (formattedCgpa.length >= 5 && int.parse(formattedCgpa[4]) >= 5) {
      roundedCgpa += 0.01;
    }

    setState(() {
      _totalCgpa = roundedCgpa;
    });
  }


  void _clearFields() {
    _controller1.clear();
    _controller2.clear();
    _controller3.clear();
    _controller4.clear();
    _controller5.clear();
    _controller6.clear();
    _controller7.clear();
    _controller8.clear();
    setState(() {
      _totalCgpa = 0.0;
    });
  }
}
