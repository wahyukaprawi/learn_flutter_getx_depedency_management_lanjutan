import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_depedency_management_lanjutan/controllers/mycontrollers.dart';

class ShopItem extends StatelessWidget {
  final s = Get.put(MyController());
  ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            s.minus();
          },
          icon: const Icon(Icons.remove),
        ),
        Obx(() => Text(
              "${s.quantiy}",
              style: const TextStyle(fontSize: 24),
            )),
        IconButton(
          onPressed: () => s.add(),
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
