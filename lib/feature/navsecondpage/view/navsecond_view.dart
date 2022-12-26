import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shivam_kushwah_final/feature/navsecondpage/controller/navsecond_controller.dart';

class NavSecond extends GetView<NavSecondController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            elevation: 0,
            title: Text('MY ATTANINDANCE')),
        body: Container(
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  DataTable(
                    // datatable widget
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)),
                    columns: [
                      // column to set the name
                      DataColumn(
                        label: Text('Name'),
                      ),
                      DataColumn(
                        label: Text('Date'),
                      ),
                      DataColumn(
                        label: Text('TimeIn'),
                      ),
                      DataColumn(
                        label: Text('TimeOut'),
                      ),
                    ],

                    rows: [
                      // row to set the values
                      DataRow(cells: [
                        DataCell(Text('shivam')),
                        DataCell(Text('25/12/2022')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                      ]),
                    ],
                  ),
                ],
              ),
            )));
  }
}
