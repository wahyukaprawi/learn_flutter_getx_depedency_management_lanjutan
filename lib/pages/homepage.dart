import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:learn_flutter_depedency_management_lanjutan/pages/countpage.dart';

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
        child: ElevatedButton(
          onPressed: () => Get.to(() => CountPage()),
          child: const Text("Count Page >>"),
        ),
      ),
    );
  }
}
