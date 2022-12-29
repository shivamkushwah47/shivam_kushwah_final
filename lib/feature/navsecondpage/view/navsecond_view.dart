import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:shivam_kushwah_final/feature/navsecondpage/controller/navsecond_controller.dart';

class NavSecond extends GetView<NavSecondController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Container(
            margin: const EdgeInsets.only(left: 5),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 23,
              ),
              color: Colors.black,
              onPressed: (() => Get.back()),
            ),
          ),
          title: const Text(
            'MY ATTENDANCE',
            style: TextStyle(color: Colors.black, fontSize: 21),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              StreamBuilder(
                stream: FirebaseFirestore.instance.collection('Attendence')
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  List demolist = [];
                  snapshot.data!.docs.map((document) {
                    Map data = document.data() as Map<String, dynamic>;
                    demolist.add(data);
                    data['id'] = document.id;
                  }).toList();
                  return Column(
                    children: [
                      const SizedBox(height: 10,),
                      Container(
                        width: Get.width,
                        margin: const EdgeInsets.all(5),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                            border: TableBorder.all(
                                width: .5
                            ),
                            // headingRowColor: MaterialStateProperty.all(Colors.amber),
                            columnSpacing: 10,
                            horizontalMargin: 8,
                            dataRowHeight: 180,
                            sortAscending: true,

                            columns: const [
                              DataColumn(label: Text('Name')),
                              DataColumn(label: Text('Date')),
                              DataColumn(label: Text('Time in')),
                              DataColumn(label: Text('Time out')),
                            ],
                            rows: demolist.map((e) =>
                                DataRow(cells: [
                                  DataCell(Text(e['name'].toString())),
                                  DataCell(Text(e['date'].toString())),
                                  DataCell(SizedBox(
                                    width: Get.width * 0.27,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        const SizedBox(height: 5,),
                                        Text('Time : ${e['timein']}'),
                                        const SizedBox(height: 5,),
                                        Text('Loc :${e['timeinloc']}',
                                          softWrap: true,),
                                      ],
                                    ),
                                  ),
                                  ),
                                  DataCell(SizedBox(
                                    width: Get.width * 0.27,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        const SizedBox(height: 5,),
                                        Text('Time : ${e['timeout']}'),
                                        const SizedBox(height: 5,),
                                        Text('Loc :${e['timeoutloc']}',
                                          softWrap: true,),
                                      ],
                                    ),
                                  ),
                                  ),

                                ])
                            ).toList(),
                          ),
                        ),
                      ),
                    ],

                  );
                },
              ),
            ],
          ),
        )
    );
  }
  }
