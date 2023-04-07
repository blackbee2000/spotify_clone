import 'package:get/get.dart';
import 'package:spotify_clone/controllers/main_controller.dart';
import 'package:spotify_clone/routes/app_routes.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController(), tag: AppRoutes.main);
  }
}
