import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:learn_flutter_depedency_management_lanjutan/pages/countpage.dart';
import 'package:learn_flutter_depedency_management_lanjutan/pages/shoppage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(() => CountPage()),
              child: const Text("Count Page >>"),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () => Get.to(() => ShopPage()),
              child: const Text("Shop Page >>"),
            ),
          ],
        ),
      ),
    );
  }
}
