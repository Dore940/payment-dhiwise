import '/core/app_export.dart';
import 'package:payment/presentation/signup_login_module_screen/models/signup_login_module_model.dart';
import 'package:flutter/material.dart';

class SignupLoginModuleController extends GetxController {
  TextEditingController group098Controller4 = TextEditingController();

  TextEditingController group098OneController3 = TextEditingController();

  Rx<SignupLoginModuleModel> signupLoginModuleModelObj =
      SignupLoginModuleModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group098Controller4.dispose();
    group098OneController3.dispose();
  }
}
