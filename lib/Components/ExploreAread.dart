import 'package:flutter/material.dart';
import 'package:zomator_clone/Components/ExploreCards.dart';

class ExploreArea extends StatelessWidget {
  const ExploreArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Explore'),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First Card
              BuildCards(),
              SizedBox(width: 10), // Space between cards
              // Second Card
              BuildCards(),
              Container(),
            ],
          )
        ],
      ),
    );
  }
}
