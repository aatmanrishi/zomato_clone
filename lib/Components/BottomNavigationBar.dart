import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zomator_clone/controller/uiController.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiController = Get.find<UiController>(); // Get the UiController

    return Obx(
      () {
        return BottomNavigationBar(
          currentIndex: uiController.seletctedIndex.toInt(), // Use the observable value
          onTap: (currentIndex) {
            uiController.seletctedIndex.value = currentIndex; // Update the current index
            print(uiController.seletctedIndex.value); // Debug print
          },
          selectedItemColor: Colors.red.shade400,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining), label: 'Delivery'),
            BottomNavigationBarItem(
                icon: Icon(Icons.brunch_dining), label: 'Dining'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
          ],
        );
      },
    );
  }
}
