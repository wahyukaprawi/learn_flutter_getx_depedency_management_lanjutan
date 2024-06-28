import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyController extends GetxController {
  var count = 0.obs;

  Future<void> setData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 777);

    count.value = prefs.getInt('counter')!.toInt();
  }
}
