import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:payment/core/app_export.dart';
import 'package:payment/core/utils/validation_functions.dart';
import 'package:payment/widgets/custom_button.dart';
import 'package:payment/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: size.width,
                                      margin: getMargin(
                                          left: 16, top: 12, right: 14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 5,
                                                    bottom: 4),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                5.54)),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgTime,
                                                        height: getVerticalSize(
                                                            11.00),
                                                        width:
                                                            getHorizontalSize(
                                                                28.00)))),
                                            Padding(
                                                padding: getPadding(
                                                    top: 5, bottom: 4),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMobilesignal,
                                                              height:
                                                                  getVerticalSize(
                                                                      10.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      17.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgWifi,
                                                              height:
                                                                  getVerticalSize(
                                                                      10.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      15.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      11.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      22.00),
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              3.00)),
                                                                  child: LinearProgressIndicator(
                                                                      value:
                                                                          0.82,
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<Color>(
                                                                              ColorConstant.black900))))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1,
                                                              top: 3,
                                                              bottom: 3),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCombinedshape,
                                                              height:
                                                                  getVerticalSize(
                                                                      4.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00)))
                                                    ]))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 22, top: 30, right: 22),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapImgArrowleft();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 4, bottom: 7),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft,
                                                    height: getSize(12.00),
                                                    width: getSize(12.00)))),
                                        Padding(
                                            padding: getPadding(left: 137),
                                            child: Text("lbl_sign_up".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGilroySemiBold24
                                                    .copyWith(height: 1.00)))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 41, right: 16),
                                  child: Text("msg_create_your_acc".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyBold24
                                          .copyWith(height: 1.00))),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 35, right: 16),
                                  child: Text("lbl_first_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyMedium16Bluegray900
                                          .copyWith(height: 1.00))),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller: controller.group098Controller2,
                                  hintText: "msg_enter_first_nam".tr,
                                  margin:
                                      getMargin(left: 16, top: 9, right: 16),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 20, right: 16),
                                  child: Text("lbl_last_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyMedium16Bluegray900
                                          .copyWith(height: 1.00))),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.group10198OneController1,
                                  hintText: "lbl_enter_last_name".tr,
                                  margin:
                                      getMargin(left: 16, top: 9, right: 16),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 20, right: 16),
                                  child: Text("lbl_email_id2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyMedium16Bluegray900
                                          .copyWith(height: 1.00))),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.group10198TwoController1,
                                  hintText: "lbl_enter_email_id".tr,
                                  margin:
                                      getMargin(left: 16, top: 9, right: 16),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 20, right: 16),
                                  child: Text("lbl_mobile_number".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyMedium16Bluegray900
                                          .copyWith(height: 1.00))),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.group10198ThreeController,
                                  hintText: "msg_enter_mobile_nu".tr,
                                  margin:
                                      getMargin(left: 16, top: 9, right: 16),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (!isValidPhone(value)) {
                                      return "Please enter valid phone number";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 20, right: 16),
                                  child: Text("lbl_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyMedium16Bluegray900
                                          .copyWith(height: 1.00))),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.group10198FourController,
                                  hintText: "lbl_enter_password".tr,
                                  margin:
                                      getMargin(left: 16, top: 9, right: 16),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 15,
                                          right: 13,
                                          bottom: 15),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgEye)),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(16.00),
                                      minHeight: getVerticalSize(13.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomButton(
                                  width: 396,
                                  text: "lbl_create_account".tr,
                                  margin: getMargin(
                                      left: 16, top: 24, right: 16, bottom: 20),
                                  alignment: Alignment.center)
                            ])))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
