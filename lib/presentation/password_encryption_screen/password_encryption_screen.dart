import 'controller/password_encryption_controller.dart';
import 'package:flutter/material.dart';
import 'package:payment/core/app_export.dart';

class PasswordEncryptionScreen extends GetWidget<PasswordEncryptionController> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    margin: getMargin(
                      left: 21,
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
                                      valueColor: AlwaysStoppedAnimation<Color>(
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
                  Padding(
                    padding: getPadding(
                      left: 21,
                      top: 293,
                      right: 21,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgCheckmark66X54,
                      height: getVerticalSize(
                        66.00,
                      ),
                      width: getHorizontalSize(
                        54.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 21,
                      top: 32,
                      right: 21,
                    ),
                    child: Text(
                      "msg_password_encryp".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemiBold24.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      219.00,
                    ),
                    margin: getMargin(
                      left: 21,
                      top: 27,
                      right: 21,
                      bottom: 20,
                    ),
                    child: Text(
                      "msg_we_ve_protectec".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtGilroyMedium16.copyWith(
                        height: 1.63,
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
