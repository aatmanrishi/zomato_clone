import 'package:flutter/material.dart';

import 'package:zomator_clone/Components/BonusCard.dart';
import 'package:zomator_clone/Components/DeliveryTopSection.dart';
import 'package:zomator_clone/Components/ExploreAread.dart';
import 'package:zomator_clone/Components/FoodOptionsArea.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // Use a SingleChildScrollView if the content might overflow
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              // Banner Section
              Deliverytopsection(),
              // BonusCard
              BonusCard(),
              // Explore card
              ExploreArea(),
              // Fod Options Area
              FoodOptionsArea()
            ],
          ),
        ),
      ),
    );
  }
}
