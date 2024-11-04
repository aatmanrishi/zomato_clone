import 'package:flutter/material.dart';

class BonusCard extends StatelessWidget {
  const BonusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return       Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 70,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Image.network(
                    'https://static.vecteezy.com/system/resources/previews/016/327/497/original/gift-box-3d-icon-render-illustration-png.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    // Use Expanded to take available space
                    child: Text(
                      '7 days of FREE delivery with GOLD & much more',
                      style: TextStyle(fontSize: 12),
                      softWrap: true,
                      // overflow: TextOverflow.fade, // Handle overflow gracefully
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    // pading
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black),
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 2.5),

                    child: Center(
                      child: Text(
                        'Claim now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            );
  }
}