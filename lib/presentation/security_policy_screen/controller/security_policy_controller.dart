import '/core/app_export.dart';
import 'package:payment/presentation/security_policy_screen/models/security_policy_model.dart';
import 'package:flutter/material.dart';

class SecurityPolicyController extends GetxController {
  TextEditingController emailController1 = TextEditingController();

  TextEditingController group10198Controller1 = TextEditingController();

  TextEditingController group10198TwoController = TextEditingController();

  Rx<SecurityPolicyModel> securityPolicyModelObj = SecurityPolicyModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController1.dispose();
    group10198Controller1.dispose();
    group10198TwoController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    securityPolicyModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    securityPolicyModelObj.value.dropdownItemList.refresh();
  }
}
