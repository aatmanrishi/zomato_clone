import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String label;
  const FilterButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 35,
        margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 1),
              blurRadius: 0.5, // Decreased blur radius
              spreadRadius: 0.5, // Decreased spread radius
            ),
          ],
        ),
        child: Center(
          child: Text(
            '$label',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
