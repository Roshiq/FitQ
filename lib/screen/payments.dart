import 'package:flutter/material.dart';
import 'package:flutter_gym/screen/students.dart';
import 'package:flutter_gym/screen/widget_buttons.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding:
                  EdgeInsets.only(top: 110, left: 50, right: 50, bottom: 60),
              child: Column(
                children: [
                  Icon(
                    Icons.sports_gymnastics,
                    color: Colors.white,
                  ),
                  Text(
                    "Fitque",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button.buildCategoryButton("Reports"),
              Button.buildAddButton(
                
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Theme(
                data: ThemeData(
                  dividerColor: Colors.white,
                  canvasColor: Colors.black,
                ),
                child: DataTable(
                  headingRowHeight: 35,
                  headingRowColor:
                      MaterialStateColor.resolveWith((states) => Colors.white),
                  dataRowHeight: 40,
                  columns: const [
                    DataColumn(
                        label: Text(
                      '#',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    // DataColumn(
                    //     label: Text('RegId',
                    //         style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Name',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Due',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('')),
                    DataColumn(label: Text('')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(
                          Text('1', style: TextStyle(color: Colors.white))),
                      // DataCell(
                      //     Text('8', style: TextStyle(color: Colors.white))),
                      DataCell(Text('hashif',
                          style: TextStyle(color: Colors.white))),
                      DataCell(Text('feb. 02.2024 ',
                          style: TextStyle(color: Colors.white))),
                      DataCell(
                          Text('jhj', style: TextStyle(color: Colors.white))),
                      DataCell(
                          Text('kjb', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: [
                      DataCell(
                          Text('2', style: TextStyle(color: Colors.white))),
                      // DataCell(
                      //     Text('12', style: TextStyle(color: Colors.white))),
                      DataCell(Text('minhas',
                          style: TextStyle(color: Colors.white))),
                      DataCell(Text('feb. 01.2024 ',
                          style: TextStyle(color: Colors.white))),
                      DataCell(Text('', style: TextStyle(color: Colors.white))),
                      DataCell(Text('', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: [
                      DataCell(
                          Text('3', style: TextStyle(color: Colors.white))),
                      // DataCell(
                      //     Text('13', style: TextStyle(color: Colors.white))),
                      DataCell(Text('Roshique',
                          style: TextStyle(color: Colors.white))),
                      DataCell(Text('jan. 24.2024 ',
                          style: TextStyle(color: Colors.white))),
                      DataCell(
                          Text('C', style: TextStyle(color: Colors.white))),
                      DataCell(
                          Text('C', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: [
                      DataCell(
                          Text('4', style: TextStyle(color: Colors.white))),
                      // DataCell(
                      //     Text('14', style: TextStyle(color: Colors.white))),
                      DataCell(
                          Text('Kenz', style: TextStyle(color: Colors.white))),
                      DataCell(Text('jan. 02.2024 ',
                          style: TextStyle(color: Colors.white))),
                      DataCell(
                          Text('A', style: TextStyle(color: Colors.white))),
                      DataCell(
                          Text('A', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: [
                      DataCell(
                          Text('5', style: TextStyle(color: Colors.white))),
                      // DataCell(
                      //     Text('15', style: TextStyle(color: Colors.white))),
                      DataCell(Text('Saheel',
                          style: TextStyle(color: Colors.white))),
                      DataCell(Text('jan. 19.2024 ',
                          style: TextStyle(color: Colors.white))),
                      DataCell(
                          Text('B', style: TextStyle(color: Colors.white))),
                      DataCell(
                          Text('B', style: TextStyle(color: Colors.white))),
                    ]),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
