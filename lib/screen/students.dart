import 'package:flutter/material.dart';
import 'package:flutter_gym/screen/homepage.dart';

class Students extends StatefulWidget {
  const Students({Key? key}) : super(key: key);

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  final List<DataRow> _activeRows = [
    const DataRow(cells: [
      DataCell(Text('1', style: TextStyle(color: Colors.white))),
      DataCell(Text('hashif', style: TextStyle(color: Colors.white))),
      DataCell(Text('feb. 02.2024 ', style: TextStyle(color: Colors.white))),
      DataCell(Icon(Icons.visibility, color: Colors.white)),
    ]),
    const DataRow(cells: [
      DataCell(Text('2', style: TextStyle(color: Colors.white))),
      DataCell(Text('minhas', style: TextStyle(color: Colors.white))),
      DataCell(Text('feb. 01.2024 ', style: TextStyle(color: Colors.white))),
      DataCell(Icon(Icons.visibility, color: Colors.white)),
    ]),
    const DataRow(cells: [
      DataCell(Text('3', style: TextStyle(color: Colors.white))),
      DataCell(Text('Roshique', style: TextStyle(color: Colors.white))),
      DataCell(Text('jan. 24.2024 ', style: TextStyle(color: Colors.white))),
      DataCell(Icon(Icons.visibility, color: Colors.white)),
    ]),
    const DataRow(cells: [
      DataCell(Text('4', style: TextStyle(color: Colors.white))),
      DataCell(Text('Kenz', style: TextStyle(color: Colors.white))),
      DataCell(Text('jan. 02.2024 ', style: TextStyle(color: Colors.white))),
      DataCell(Icon(Icons.visibility, color: Colors.white)),
    ]),
    const DataRow(cells: [
      DataCell(Text('5', style: TextStyle(color: Colors.white))),
      DataCell(Text('Saheel', style: TextStyle(color: Colors.white))),
      DataCell(Text('jan. 19.2024 ', style: TextStyle(color: Colors.white))),
      DataCell(Icon(Icons.visibility, color: Colors.white)),
    ]),
  ];

  final List<DataRow> _inactiveRows = [
    const DataRow(cells: [
      DataCell(Text('6', style: TextStyle(color: Colors.white))),
      DataCell(Text('John', style: TextStyle(color: Colors.white))),
      DataCell(Text('mar. 12.2023 ', style: TextStyle(color: Colors.white))),
      DataCell(Icon(Icons.visibility, color: Colors.white)),
    ]),
    const DataRow(cells: [
      DataCell(Text('7', style: TextStyle(color: Colors.white))),
      DataCell(Text('Alice', style: TextStyle(color: Colors.white))),
      DataCell(Text('apr. 05.2023 ', style: TextStyle(color: Colors.white))),
      DataCell(Icon(Icons.visibility, color: Colors.white)),
    ]),
    const DataRow(cells: [
      DataCell(Text('8', style: TextStyle(color: Colors.white))),
      DataCell(Text('Bob', style: TextStyle(color: Colors.white))),
      DataCell(Text('feb. 28.2023 ', style: TextStyle(color: Colors.white))),
      DataCell(Icon(Icons.visibility, color: Colors.white)),
    ]),
  ];

  List<DataRow> _currentRows = [];

  bool _isActiveSelected = true;

  @override
  void initState() {
    super.initState();
    _currentRows = _activeRows;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context,);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
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
              _buildCategoryButton("Active"),
              _buildCategoryButton("Inactive"),
              _buildAddButton(context), // Pass the context to the _buildAddButton method
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width, // Set width to match screen width
                    child: DataTable(
                      headingRowHeight: 35,
                      headingRowColor: MaterialStateColor.resolveWith((states) => Colors.white),
                      dataRowHeight: 40,
                      columns: const [
                        DataColumn(label: Text('#', style: TextStyle(fontWeight: FontWeight.bold))),
                        DataColumn(label: Text('Name', style: TextStyle(fontWeight: FontWeight.bold))),
                        DataColumn(label: Text('Due', style: TextStyle(fontWeight: FontWeight.bold))),
                        DataColumn(label: SizedBox(width: 50)),
                      ],
                      rows: _currentRows,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String text) {
    final bool isSelected = (text == "Active") ? _isActiveSelected : !_isActiveSelected;
    return GestureDetector(
      onTap: () {
        setState(() {
          _isActiveSelected = (text == "Active") ? true : false;
          if (_isActiveSelected) {
            _currentRows = _activeRows;
          } else {
            _currentRows = _inactiveRows;
          }
        });
      },
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.orange,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: isSelected ? Colors.black : Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.blue.shade50,
              title: Text('Add Student'),
              content: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width ,// Increased width to 90% of screen width
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildHeading('Reg Id'),
                      _buildTextField(""),
                      _buildHeading('Name'),
                      _buildTextField(""),
                      _buildHeading('Age'),
                      _buildTextField("", ),
                      _buildHeading('Join Date'),
                      _buildTextField('', ),
                      _buildHeading('Phone'),
                      _buildTextField(''),
                      _buildHeading('Training Type'),
                      Row(
                        children: [
                          Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                          Text('Personal'),
                          Radio(value: 2, groupValue: 1, onChanged: (value) {}),
                          Text('Regular'),
                        ],
                      ),
                      _buildHeading('Joining For'),
                      _buildTextField('Choose....', height: 40),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel'),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(),
                            onPressed: () {
                              // Add student logic here
                            },
                            child: Text('Add'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.add,
              color: Colors.white,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeading(String headingText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          headingText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(String hintText, {double height = 50}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: height,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none
            ),
          ),
        ),
      ),
    );
  }




}
