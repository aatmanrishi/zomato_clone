import 'package:flutter/material.dart';

class LocationTypeCards extends StatelessWidget {
  final String label;
  final String img;
  
  const LocationTypeCards({super.key, required this.label, required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 90,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
        ),
        SizedBox(height: 10),
        Text('$label', style: TextStyle(fontWeight: FontWeight.bold))
      ],
    );
  }
}
