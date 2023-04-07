import 'package:get/get.dart';
import 'package:spotify_clone/controllers/splash_controller.dart';
import 'package:spotify_clone/routes/app_routes.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(), tag: AppRoutes.splash);
  }
}
