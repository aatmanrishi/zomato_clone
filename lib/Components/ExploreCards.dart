import 'package:flutter/material.dart';

class BuildCards extends StatelessWidget {
  const BuildCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5), // Border radius
        boxShadow: [
          BoxShadow(
            color: Colors.black26, // Shadow color
            blurRadius: 6, // Shadow blur radius
            spreadRadius: 1, // Spread radius
            offset: Offset(0, 3), // Shadow offset
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
        width: 171,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Offers',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
                Text(
                  'Flat Discounts',
                  style: TextStyle(
                      color: Colors.blue[300],
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.blue,
                ),
              ],
            ),
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/019/632/927/non_2x/3d-minimal-discount-coupon-special-offer-promotion-flash-sale-icon-3d-illustration-free-png.png',
              height: 50,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

// https://cdn-icons-png.flaticon.com/512/2659/2659333.png