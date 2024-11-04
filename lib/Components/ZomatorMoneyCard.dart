import 'package:flutter/material.dart';

class ZomatoMoneyCard extends StatelessWidget {
  const ZomatoMoneyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      width: 350,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromARGB(255, 202, 202, 202),
                      backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/9568/9568024.png'),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Zomator Money',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rs 100',
                      style: TextStyle(fontSize: 14),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_up_sharp))
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Gift Card Balance',
                style: TextStyle(fontSize: 14),
              ),
              Container(
                width: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Rs 0',
                      style: TextStyle(fontSize: 14),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_outline_sharp,
                          color: Colors.red[400],
                          size: 12,
                        ))
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Zomato Credits',
                style: TextStyle(fontSize: 14),
              ),
              Container(
                width: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Rs 0',
                      style: TextStyle(fontSize: 14),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_outline_sharp,
                          color: Colors.red[400],
                          size: 12,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
