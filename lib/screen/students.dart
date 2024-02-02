import 'package:flutter/material.dart';

class Students extends StatefulWidget {
  const Students({super.key});

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
          const Padding(
            padding: EdgeInsets.only(top: 80),
            child: Center(child: Text("FitQue",style: TextStyle(color: Colors.white),)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Center(
                    child: Text(
                      "Active",style: TextStyle(
                      fontWeight: FontWeight.bold
                        ,fontSize: 18
                    ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Center(
                    child: Text(
                      "Inactive",style: TextStyle(
                      fontWeight: FontWeight.bold
                        ,fontSize: 18
                    ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100, // Increased width to accommodate the icon
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 5), // Adjust the spacing between text and icon
                        Icon(
                          Icons.add,

                          size: 18, // Adjust the size of the icon as needed
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
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
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8), // Adjust padding
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


        ],
      ),
    );
  }
}
