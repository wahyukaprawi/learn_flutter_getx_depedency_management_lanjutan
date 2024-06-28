import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyController extends GetxController {
  // count
  var count = 0.obs;

  Future<void> setData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 777);

    count.value = prefs.getInt('counter')!.toInt();
  }

  // shop
  var quantiy = 0.obs;
  var total = 0.obs;

  void add() {
    quantiy++;
    Get.find<MyController>(tag: "total").total.value++;
  }

  void minus() {
    quantiy--;
    Get.find<MyController>(tag: "total").total.value--;
  }
}
