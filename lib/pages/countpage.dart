import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_depedency_management_lanjutan/controllers/mycontrollers.dart';

class CountPage extends StatelessWidget {
  final c = Get.put(MyController());
  CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Obx(
          () => Text(
            "${c.count}",
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.setData(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
