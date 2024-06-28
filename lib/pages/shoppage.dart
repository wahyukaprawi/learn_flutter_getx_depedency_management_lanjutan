import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_depedency_management_lanjutan/controllers/mycontrollers.dart';
import 'package:learn_flutter_depedency_management_lanjutan/widgets/shopitem.dart';

class ShopPage extends StatelessWidget {
  final s = Get.put(MyController(), tag: "total");
  final q = Get.create(() => MyController());
  ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => ShopItem(),
      ),
      floatingActionButton: CircleAvatar(
        child: Obx(
          () => Text("${s.total}"),
        ),
      ),
    );
  }
}
