import 'package:flutter/material.dart';

class Button {
  static Widget buildCategoryButton(String text) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  static Widget buildAddButton() {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Add",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(width: 5),
          Icon(
            Icons.add,
            size: 18,
          ),
        ],
      ),
    );
  }
}
