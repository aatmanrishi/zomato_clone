import 'package:flutter/material.dart';

import 'package:zomator_clone/Components/FliterButton.dart';

class FilterButtonsArea extends StatelessWidget {
  const FilterButtonsArea({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myItems2 = [
      'Nearest',
      'Book Table',
      'Ratings 4.0+',
      'Pure Vegetarian',
      'Non Vegetarian',
      'Vegetarian',
    ];

    return Container(
      padding: EdgeInsets.only(left: 17.5),
      height: 70, // Increased height to accommodate children properly
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
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
                    child: Row(
                      children: [
                        Icon(
                          Icons.format_list_bulleted_rounded,
                          size: 15,
                        ),
                        Text(
                          'Filters',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_drop_down_sharp),
                      ],
                    ),
                  ),
                ),
                ...myItems2.map((item) => FilterButton(label: item)).toList(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
