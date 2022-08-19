import 'controller/phone_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment/core/app_export.dart';
import 'package:payment/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVerificationScreen extends GetWidget<PhoneVerificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        left: 16,
                        top: 12,
                        right: 14,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 12,
                              top: 5,
                              bottom: 4,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  5.54,
                                ),
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgTime,
                                height: getVerticalSize(
                                  11.00,
                                ),
                                width: getHorizontalSize(
                                  28.00,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                              bottom: 4,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgMobilesignal,
                                    height: getVerticalSize(
                                      10.00,
                                    ),
                                    width: getHorizontalSize(
                                      17.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 5,
                                    bottom: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgWifi,
                                    height: getVerticalSize(
                                      10.00,
                                    ),
                                    width: getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 5,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      11.00,
                                    ),
                                    width: getHorizontalSize(
                                      22.00,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          3.00,
                                        ),
                                      ),
                                      child: LinearProgressIndicator(
                                        value: 0.82,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          ColorConstant.black900,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 3,
                                    bottom: 3,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgCombinedshape,
                                    height: getVerticalSize(
                                      4.00,
                                    ),
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 90,
                        right: 16,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgMobile,
                        height: getVerticalSize(
                          82.00,
                        ),
                        width: getHorizontalSize(
                          51.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 31,
                        right: 16,
                      ),
                      child: Text(
                        "msg_phone_verificat".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroySemiBold24.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        300.00,
                      ),
                      margin: getMargin(
                        left: 16,
                        top: 25,
                        right: 16,
                      ),
                      child: Text(
                        "msg_a_text_message".tr,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtGilroyMedium16.copyWith(
                          height: 1.63,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 64,
                      right: 16,
                    ),
                    child: Container(
                      width: getHorizontalSize(
                        280.00,
                      ),
                      height: getVerticalSize(
                        1.00,
                      ),
                      child: Obx(
                        () => PinCodeTextField(
                          appContext: context,
                          controller: controller.otpController.value,
                          length: 6,
                          obscureText: false,
                          obscuringCharacter: '*',
                          keyboardType: TextInputType.number,
                          autoDismissKeyboard: true,
                          enableActiveFill: true,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onChanged: (value) {},
                          pinTheme: PinTheme(
                            fieldWidth: getHorizontalSize(
                              40.00,
                            ),
                            shape: PinCodeFieldShape.underline,
                            selectedFillColor: ColorConstant.bluegray200,
                            activeFillColor: ColorConstant.bluegray200,
                            inactiveFillColor: ColorConstant.bluegray200,
                            inactiveColor: ColorConstant.fromHex("#1212121D"),
                            selectedColor: ColorConstant.fromHex("#1212121D"),
                            activeColor: ColorConstant.fromHex("#1212121D"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 396,
                    text: "lbl_next".tr,
                    margin: getMargin(
                      left: 16,
                      top: 39,
                      right: 16,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 20,
                        right: 16,
                        bottom: 406,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "msg_didn_t_get_the".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 12,
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_resend".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold16.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
