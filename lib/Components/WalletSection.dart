import 'package:flutter/material.dart';

class WalletSection extends StatelessWidget {
  const WalletSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Text('WALLET', style: TextStyle(color: Colors.indigo)),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            width: 350,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/discount.jpeg'))),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create Wallet',
                      style: TextStyle(fontSize: 14, color: Colors.red[400]),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 12,
                      color: Colors.red[400],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
