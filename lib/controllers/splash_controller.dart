import 'package:get/get.dart';
import 'package:spotify_clone/routes/app_routes.dart';

class SplashController extends GetxController {
  final isShow = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  void init() {
    Future.delayed(const Duration(seconds: 1)).then((_) => isShow.value = true);
    Future.delayed(const Duration(seconds: 3)).then(
      (_) => Get.offAndToNamed(AppRoutes.intro),
    );
  }
}
