import 'package:flutter/material.dart';

class FoodOptionsArea extends StatelessWidget {
  const FoodOptionsArea({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> foodItems = [
      {
        "name": "Pizza",
        "image": "https://freepngimg.com/thumb/pizza/19-pizza-png-image.png"
      },
      {
        "name": "Burger",
        "image":
            "https://th.bing.com/th/id/OIP.cbExHEBoI5yiZc9_WtzJ-gHaFW?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Pasta",
        "image":
            "https://th.bing.com/th/id/OIP.1nuHVMFMffS8O5Sn0mn55wHaHb?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Sushi",
        "image":
            "https://th.bing.com/th/id/OIP.AkcfFVOtrxWIsetxYIczXAHaEZ?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Tacos",
        "image":
            "https://th.bing.com/th/id/OIP.qQZvL3_UHV9O6mLgYYAYFwHaEr?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Salad",
        "image": "https://www.pngmart.com/files/1/Salad-PNG-Image.png"
      },
      // {
      //   "name": "Momos",
      //   "image":
      //       "https://png.pngtree.com/png-clipart/20230313/original/pngtree-fresh-steam-momos-png-image_8987007.png"
      // },
      {
        "name": "Ice Cream",
        "image":
            "https://th.bing.com/th/id/OIP.qnqJrW-yt3dPu4u7x5ymswHaD-?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Donuts",
        "image":
            "https://th.bing.com/th/id/OIP.wFhdr6F1Q7NMLRU4dIiZegHaG6?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Fries",
        "image":
            "https://th.bing.com/th/id/OIP.kFbEwCJD7oflrzpG1HCZSQHaE2?rs=1&pid=ImgDetMain"
      },
      // {
      //   "name": "Samosa",
      //   "image":
      //       "https://png.pngtree.com/png-clipart/20231002/original/pngtree-samosa-halal-food-png-image_13067316.png"
      // },
      {
        "name": "Bread",
        "image":
            "https://th.bing.com/th/id/OIP.7dH2gEcA0VXTKJ7xLt6QuQHaG-?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Chocolate",
        "image":
            "https://th.bing.com/th/id/OIP.McUs32j3wNEa0b-LwX4XeAHaGK?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Cheesecake",
        "image":
            "https://th.bing.com/th/id/OIP.McUs32j3wNEa0b-LwX4XeAHaGK?rs=1&pid=ImgDetMain"
      },
      {
        "name": "Fruit Salad",
        "image": "https://www.pngarts.com/files/2/Fruit-Salad-PNG-Photo.png"
      },
      {
        "name": "Pancakes",
        "image":
            "https://www.pngmart.com/files/5/Pancakes-Transparent-Background.png"
      },
      {
        "name": "Waffles",
        "image":
            "https://www.pngarts.com/files/3/Belgian-Waffle-Free-PNG-Image.png"
      },
      {
        "name": "Muffins",
        "image":
            "https://th.bing.com/th/id/OIP.W87Jf49wxhqWefHYy1yr6QHaHa?rs=1&pid=ImgDetMain"
      },
      // {
      //   "name": "Paneer Tikka",
      //   "image":
      //       "https://th.bing.com/th/id/OIP.YeNisosvN-81ouanm1VtzQHaFC?rs=1&pid=ImgDetMain"
      // },
      {
        "name": "Soup",
        "image": "https://www.pngarts.com/files/3/Tomato-Soup-PNG-Pic-1.png"
      },
      {
        "name": "Noodles",
        "image":
            "https://th.bing.com/th/id/OIP.ipKgwXMOtFhm3F1nXqZrNgHaGT?rs=1&pid=ImgDetMain"
      },
    ];

    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("WHAT'S ON YOUR MIND"),
          SizedBox(height: 40),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: foodItems.map((item) {
              return Container(
                height: 120,
                width: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      item["image"]!,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 5),
                    Text(
                      item["name"]!,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
