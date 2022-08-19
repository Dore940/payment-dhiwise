import '/core/app_export.dart';
import 'package:payment/presentation/account_creation_screen/models/account_creation_model.dart';
import 'package:flutter/material.dart';

class AccountCreationController extends GetxController {
  TextEditingController group098Controller3 = TextEditingController();

  TextEditingController group098OneController2 = TextEditingController();

  TextEditingController group098TwoController2 = TextEditingController();

  TextEditingController group10198ThreeController1 = TextEditingController();

  TextEditingController group10198FourController1 = TextEditingController();

  Rx<AccountCreationModel> accountCreationModelObj = AccountCreationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group098Controller3.dispose();
    group098OneController2.dispose();
    group098TwoController2.dispose();
    group10198ThreeController1.dispose();
    group10198FourController1.dispose();
  }
}
