import 'package:flutter/material.dart';


class TotalSeatPage extends StatelessWidget {
  final List<List<String>> tableData = [
    ['First Shift', 'Civil Technology', '100'],
    ['Second Shift', 'Civil Technology', '100'],
    ['First Shift', 'Electrical Technology', '100'],
    ['Second Shift', 'Electrical Technology', '100'],
    ['First Shift', 'Electronics Technology', '100'],
    ['Second Shift', 'Electronics Technology', '100'],
    ['First Shift', 'Mechanical Technology', '100'],
    ['Second Shift', 'Mechanical Technology', '100'],
    ['First Shift', 'Power Technology', '50'],
    ['Second Shift', 'Power Technology', '50'],
    ['First Shift', 'Mining and Mine Survey Technology', '50'],
    ['Second Shift', 'Mining and Mine Survey Technology', '50'],
    ['First Shift', 'Electronics Technology', '50'],
    ['Second Shift', 'Electronics Technology', '50'],
    ['First Shift', 'Computer Technology', '50'],
    ['Second Shift', 'Computer Technology', '50'],
    ['First Shift', 'Refrigeration and Air Conditioning Technology', '50'],
    ['Second Shift', 'Refrigeration and Air Conditioning Technology', '50'],
    ['First Shift', 'Tourism and Hospitality', '50'],
    ['Second Shift', 'Tourism and Hospitality', '50'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Total Seat'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Table(
            border: TableBorder.all(),
            columnWidths: {
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(3),
              2: FlexColumnWidth(1),
            },
            children: [
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Shift',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Technology',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Seat',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              for (List<String> rowData in tableData)
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(rowData[0], style: TextStyle(fontSize: 20),),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(rowData[1], style: TextStyle(fontSize: 20),),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(rowData[2], style: TextStyle(fontSize: 20),),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
