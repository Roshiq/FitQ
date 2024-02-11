import 'package:flutter/material.dart';
import 'package:flutter_gym/screen/widget_buttons.dart';

class Students extends StatefulWidget {
  const Students({Key? key}) : super(key: key);

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          const Text(
            "FitQue",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button.buildCategoryButton("Active"),
              Button.buildCategoryButton("Inactive"),
              Button.buildAddButton(),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.white,
            thickness: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search....",
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
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
                  headingRowColor: MaterialStateColor.resolveWith((states) => Colors.white),
                  dataRowHeight: 40,
                  columns: const [
                    DataColumn(label: Text('#',style: TextStyle(fontWeight: FontWeight.bold,),)),
                    DataColumn(label: Text('RegId',style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('Name',style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('Due',style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('')),
                    DataColumn(label: Text('')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('1', style: TextStyle(color: Colors.white))),
                      DataCell(Text('8', style: TextStyle(color: Colors.white))),
                      DataCell(Text('hashif', style: TextStyle(color: Colors.white))),
                      DataCell(Text('feb. 02.2024 ', style: TextStyle(color: Colors.white))),
                      DataCell(Text('jhj', style: TextStyle(color: Colors.white))),
                      DataCell(Text('kjb', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2', style: TextStyle(color: Colors.white))),
                      DataCell(Text('12', style: TextStyle(color: Colors.white))),
                      DataCell(Text('minhas', style: TextStyle(color: Colors.white))),
                      DataCell(Text('feb. 01.2024 ', style: TextStyle(color: Colors.white))),
                      DataCell(Text('', style: TextStyle(color: Colors.white))),
                      DataCell(Text('', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('3', style: TextStyle(color: Colors.white))),
                      DataCell(Text('13', style: TextStyle(color: Colors.white))),
                      DataCell(Text('Roshique', style: TextStyle(color: Colors.white))),
                      DataCell(Text('jan. 24.2024 ', style: TextStyle(color: Colors.white))),
                      DataCell(Text('C', style: TextStyle(color: Colors.white))),
                      DataCell(Text('C', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('4', style: TextStyle(color: Colors.white))),
                      DataCell(Text('14', style: TextStyle(color: Colors.white))),
                      DataCell(Text('Kenz', style: TextStyle(color: Colors.white))),
                      DataCell(Text('jan. 02.2024 ', style: TextStyle(color: Colors.white))),
                      DataCell(Text('A', style: TextStyle(color: Colors.white))),
                      DataCell(Text('A', style: TextStyle(color: Colors.white))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('5', style: TextStyle(color: Colors.white))),
                      DataCell(Text('15', style: TextStyle(color: Colors.white))),
                      DataCell(Text('Saheel', style: TextStyle(color: Colors.white))),
                      DataCell(Text('jan. 19.2024 ', style: TextStyle(color: Colors.white))),
                      DataCell(Text('B', style: TextStyle(color: Colors.white))),
                      DataCell(Text('B', style: TextStyle(color: Colors.white))),
                    ]),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }

  
}
