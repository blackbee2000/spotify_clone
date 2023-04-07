import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final fullName = TextEditingController().obs;
  final email = TextEditingController().obs;
  final password = TextEditingController().obs;
  final repeatPassword = TextEditingController().obs;
  final isShowPassword = false.obs;
  final isShowRepeatPassword = false.obs;
}
