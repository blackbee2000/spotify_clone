import 'package:get/get.dart';
import 'package:spotify_clone/bindings/login_binding.dart';
import 'package:spotify_clone/bindings/main_bindings.dart';
import 'package:spotify_clone/bindings/register_binding.dart';
import 'package:spotify_clone/routes/app_routes.dart';
import 'package:spotify_clone/screens/intro/index.dart';
import 'package:spotify_clone/screens/login/index.dart';
import 'package:spotify_clone/screens/main/index.dart';
import 'package:spotify_clone/screens/register/index.dart';
import 'package:spotify_clone/screens/sign-up/index.dart';
import 'package:spotify_clone/screens/splash/index.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.intro,
      page: () => const IntroPage(),
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpPage(),
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
      transitionDuration: const Duration(milliseconds: 500),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => const RegisterPage(),
      transitionDuration: const Duration(milliseconds: 500),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => const MainPage(),
      binding: MainBinding(),
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}
