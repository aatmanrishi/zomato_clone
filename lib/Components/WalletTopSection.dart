import 'package:flutter/material.dart';
import 'package:zomator_clone/Components/SeachFieldAndTopSection.dart';

class WalletTopSection extends StatelessWidget {
  const WalletTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 5, 15),
      decoration: BoxDecoration(
          color: MaterialColor(
            0xFF070B26, // Primary color in hexadecimal format
            <int, Color>{
              50: Color.fromRGBO(7, 11, 38, 0.1),
              100: Color.fromRGBO(7, 11, 38, 0.2),
              200: Color.fromRGBO(7, 11, 38, 0.3),
              300: Color.fromRGBO(7, 11, 38, 0.4),
              400: Color.fromRGBO(7, 11, 38, 0.5),
              500: Color.fromRGBO(7, 11, 38, 0.6),
              600: Color.fromRGBO(7, 11, 38, 0.7),
              700: Color.fromRGBO(7, 11, 38, 0.8),
              800: Color.fromRGBO(7, 11, 38, 0.9),
              900: Color.fromRGBO(7, 11, 38, 1.0),
            },
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SeachFieldandTopSection(
            isNeeded: false,
            textColor: true,
          ),
          Text(
            'MONEY',
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 8),
          )
        ],
      ),
    );
  }
}
