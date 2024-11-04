import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart'; // Import Device Preview
import 'package:zomator_clone/Pages/Root.dart';
import 'package:zomator_clone/controller/uiController.dart';

void main() {
  Get.put(UiController()); // Dependency injection for UiController

  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // Enable Device Preview only in debug mode
      builder: (context) => const MyApp(), // Wrap MyApp with DevicePreview
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Zomato',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade400),
        useMaterial3: true,
      ),
      home: const Root(), // Ensure Home widget is correctly defined
    );
  }
}
