import 'package:flutter/material.dart';
import 'package:zomator_clone/Components/LocationCard.dart';

class FoodLocations extends StatelessWidget {
  const FoodLocations({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> locations = [
      {
        "name": "Land Mark",
        "img":
            "https://th.bing.com/th/id/OIP.Ptf21B3mL1aO9PDHDuk8SwHaFj?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Z Square",
        "img":
            "https://img.staticmb.com/mbcontent/images/uploads/2022/10/z-square-mall.jfif%20(1).jpg"
      },
      {
        "name": "Hotel D Nada",
        "img":
            "https://cdn0.weddingwire.in/vendor/5121/3_2/960/png/banquet-hall-hotel-de-nada-banquet-hall-7_15_185121-161254136750147.jpeg"
      },
      {
        "name": "Manal Cafe",
        "img":
            "https://th.bing.com/th/id/OIP.y1U5bwsfZFqR1Qh506Xg6QHaEK?w=512&h=288&rs=1&pid=ImgDetMain"
      },
      {
        "name": "RamLitti Chokha",
        "img":
            "https://newstrack.com/h-upload/2023/09/13/1571588-kanpur-famous-dal-bati-chokha.jpg"
      },
    ];
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 17.5),
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          // Heading Text
          Text(
            'MUST-TRIES IN RANCHI',
            style: TextStyle(
              fontSize: 14,
              color: const Color.fromARGB(255, 111, 111, 111),
            ),
          ),
          SizedBox(height: 17),
          // Food Location Stories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: locations.map((location) {
                return LocationCard(
                    label: location["name"].toString(),
                    img: location["img"].toString());
              }).toList(),
            ),
          ),
          SizedBox(
            height: 18,
          ),

          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            height: 35,
            width: 125,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Explore more',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.red[400]),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    size: 12,
                    Icons.arrow_forward,
                    color: Colors.red[400],
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
