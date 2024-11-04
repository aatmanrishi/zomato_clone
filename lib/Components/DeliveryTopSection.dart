import 'package:flutter/material.dart';
import 'package:zomator_clone/Components/SeachFieldAndTopSection.dart';

class Deliverytopsection extends StatelessWidget {
  const Deliverytopsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 20, top: 25),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                'https://masalabox.co.in/wp-content/uploads/2014/10/Happy-Diwali-Colorful-Crackers-New-HD-Wallpapers.jpg',
              ),
              fit: BoxFit.cover)), // Example color for visibility
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Top Container
          SeachFieldandTopSection(),
          // Bottom Container
          Container(
            padding: EdgeInsets.all(5),
            height: 35,
            width: 125,
            decoration: BoxDecoration(
                color: Colors.red[700],
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get 25% off',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
