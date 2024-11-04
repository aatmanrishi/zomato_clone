import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String label;
  final String img;
  const LocationCard({super.key, required this.label, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181,
      width: 152,
      margin: EdgeInsets.only(right: 10), // Add some spacing
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 5,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
