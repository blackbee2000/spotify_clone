import 'package:get/get.dart';
import 'package:spotify_clone/controllers/login_controller.dart';
import 'package:spotify_clone/routes/app_routes.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), tag: AppRoutes.login);
  }
}
