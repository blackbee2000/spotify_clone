import 'package:get/get.dart';
import 'package:spotify_clone/controllers/home_controller.dart';
import 'package:spotify_clone/controllers/main_controller.dart';
import 'package:spotify_clone/routes/app_routes.dart';
import 'package:spotify_clone/utils/app_words.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController(), tag: AppRoutes.main);
    Get.lazyPut(() => HomeController(), tag: AppWords.home);
  }
}
