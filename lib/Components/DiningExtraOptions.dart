import 'package:flutter/material.dart';
import 'package:zomator_clone/Components/LocationTypeCards.dart';

class DiningExtraOptions extends StatelessWidget {
  const DiningExtraOptions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> locations = [
      {
        "name": "Family",
        "img":
            "https://th.bing.com/th/id/OIP.XooBveh8qoe8s8xVcwkOLgHaHa?w=660&h=660&rs=1&pid=ImgDetMain"
      },
      {
        "name": "Cafe",
        "img":
            "https://th.bing.com/th/id/OIP.tzo_S_AIbltzRcMCKOHbvgHaFj?w=216&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
      },
      {
        "name": "NightLife & Drinks",
        "img":
            "https://th.bing.com/th/id/OIP.7UtKwuiCLLqbNfkBZM8xfAHaE8?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Premium Places",
        "img":
            "https://th.bing.com/th/id/OIP.KydFSxRcWm9XueyxHR2lngHaHa?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Outdoor Dining",
        "img":
            "https://th.bing.com/th/id/OIP._G7Xv30k9hlnXRkaX8hDtAHaE5?w=275&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7"
      },
      {
        "name": "Deserts",
        "img":
            "https://th.bing.com/th/id/OIP.Di9YF79N7JNeca5H6kWocgHaFM?rs=1&pid=ImgDetMain"
      },
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Heading
          Text(
            'WHAT ARE YOU LOOKING FOR?',
            style: TextStyle(
              fontSize: 14,
              color: const Color.fromARGB(255, 111, 111, 111),
            ),
          ),
          SizedBox(height: 25),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: locations.map((location) {
              return LocationTypeCards(
                  label: location["name"].toString(),
                  img: location["img"].toString());
            }).toList(),
          )
        ],
      ),
    );
  }
}
