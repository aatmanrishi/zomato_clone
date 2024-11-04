import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zomator_clone/Components/BottomNavigationBar.dart';
import 'package:zomator_clone/Pages/Delivery.dart';
import 'package:zomator_clone/Pages/Dining.dart';
import 'package:zomator_clone/Pages/Wallet.dart';
import 'package:zomator_clone/controller/uiController.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    final uiController = Get.find<UiController>(); // Get the UiController

    // List of pages corresponding to each tab in the BottomNavigationBar
    List<Widget> pagesArray = [
      Delivery(),
      Dining(),
      Wallet(),
    ];

    return Scaffold(
      body: Obx(() {
        // Display the page corresponding to the selected index
        return pagesArray[uiController.seletctedIndex.value];
      }),
      bottomNavigationBar:
          const CustomBottomNavigationBar(), // Use const for optimization
    );
  }
}
