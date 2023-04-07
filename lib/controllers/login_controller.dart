import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final usernameEmail = TextEditingController().obs;
  final password = TextEditingController().obs;
  final isShowPassword = false.obs;
}
