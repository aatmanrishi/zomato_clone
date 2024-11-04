import 'package:flutter/material.dart';

class SeachFieldandTopSection extends StatelessWidget {
  final bool? textColor;
  final bool? isNeeded;
  const SeachFieldandTopSection({super.key, this.isNeeded, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0), // Add some padding
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Right side location
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.red.shade400,
                    size: 30,
                  ),
                  SizedBox(width: 4), // Add spacing
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Basera Vihar Colony',
                        style: textColor == true
                            ? TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)
                            : TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Basera Vihar Colony, Ranchi, Jharkhand',
                        style: textColor == true
                            ? TextStyle(fontSize: 10, color: Colors.white)
                            : TextStyle(fontSize: 10),
                        softWrap: true,
                      ),
                    ],
                  ),
                ],
              ),
              // Left Side Profile View
              Row(
                children: [
                  Container(
                    height: 34,
                    width: 34,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26, // Shadow color
                          blurRadius: 6, // Shadow blur radius
                          spreadRadius: 1, // Spread radius
                          offset: Offset(0, 3), // Shadow offset
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(Icons.code_outlined),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.wT4LINkfsyYpDKacOr9gkQHaHa?rs=1&pid=ImgDetMain'),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 16), // Add spacing
          isNeeded == false
              ? Container()
              : Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [BoxShadow(blurRadius: 1)]),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search "coke"',
                        hintStyle:
                            TextStyle(fontSize: 16, color: Colors.grey[350]),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search_rounded,
                              size: 30, color: Colors.red.shade400),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic_none_sharp,
                              color: Colors.red[400],
                              size: 20,
                            ))),
                  ),
                )
        ],
      ),
    );
  }
}
