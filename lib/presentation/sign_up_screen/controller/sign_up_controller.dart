import '/core/app_export.dart';
import 'package:payment/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController group098Controller2 = TextEditingController();

  TextEditingController group10198OneController1 = TextEditingController();

  TextEditingController group10198TwoController1 = TextEditingController();

  TextEditingController group10198ThreeController = TextEditingController();

  TextEditingController group10198FourController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group098Controller2.dispose();
    group10198OneController1.dispose();
    group10198TwoController1.dispose();
    group10198ThreeController.dispose();
    group10198FourController.dispose();
  }
}
