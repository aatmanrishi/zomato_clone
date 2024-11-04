import 'package:flutter/material.dart';
import 'package:zomator_clone/Components/DiningExtraOptions.dart';
import 'package:zomator_clone/Components/FilterButtonsAread.dart';
import 'package:zomator_clone/Components/FoodLocation.dart';
import 'package:zomator_clone/Components/SeachFieldAndTopSection.dart';

class Dining extends StatelessWidget {
  const Dining({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35),
            SeachFieldandTopSection(),
            FilterButtonsArea(),
            // Location Foods
            FoodLocations(),
            // Dining Extra Options
            DiningExtraOptions()
          ],
        ),
      ),
    );
  }
}
