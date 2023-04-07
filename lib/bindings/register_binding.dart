import 'package:get/get.dart';
import 'package:spotify_clone/controllers/register_controller.dart';
import 'package:spotify_clone/routes/app_routes.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController(), tag: AppRoutes.register);
  }
}
