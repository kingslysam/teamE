import 'package:flutter/material.dart';
import 'package:tcms_group4/Constants/colour_constant.dart';
import 'package:tcms_group4/Constants/theme.dart';
import 'package:tcms_group4/Constants/utils.dart';
import 'package:tcms_group4/Screen/image_constant.dart';
import 'package:tcms_group4/Widgets/common_image_view.dart';
import 'package:tcms_group4/theme/app_style.dart';

class MyDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.black900,
      body: Column(
        children: [
          Expanded(
              child: Container(
                  margin: getMargin(top: 16),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                            child: SingleChildScrollView(
                          child: Container(
                            margin: getMargin(bottom: 75),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding:
                                              getPadding(left: 14, right: 14),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 1, bottom: 2),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgTicket,
                                                        height: getVerticalSize(
                                                            11.00),
                                                        width:
                                                            getHorizontalSize(
                                                                28.00))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 234,
                                                        top: 1,
                                                        right: 1,
                                                        bottom: 1),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgSignal,
                                                        height: getVerticalSize(
                                                            11.00),
                                                        width:
                                                            getHorizontalSize(
                                                                67.00)))
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: getVerticalSize(470.00),
                                          width: size.width,
                                          margin: getMargin(top: 12),
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                        margin: getMargin(
                                                            bottom: 10),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  25,
                                                                              right:
                                                                                  14),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                GestureDetector(onTap: () {}, child: Padding(padding: getPadding(top: 1, bottom: 157), child: CommonImageView(svgPath: ImageConstant.imgArrowleft, height: getVerticalSize(18.00), width: getHorizontalSize(10.00)))),
                                                                                Container(
                                                                                    margin: getMargin(left: 4),
                                                                                    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                      Align(
                                                                                          alignment: Alignment.centerLeft,
                                                                                          child: Container(
                                                                                              margin: getMargin(top: 39, right: 10),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(children: [
                                                                                                    TextSpan(text: "balance:", style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(28), fontFamily: 'DM Sans', fontWeight: FontWeight.w700)),
                                                                                                    const TextSpan(text: " "),
                                                                                                    TextSpan(text: "23,000", style: TextStyle(color: ColorConstant.green500, fontSize: getFontSize(28), fontFamily: 'DM Sans', fontWeight: FontWeight.w700, decoration: TextDecoration.underline))
                                                                                                  ]),
                                                                                                  textAlign: TextAlign.left))),
                                                                                    ]))
                                                                              ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              42),
                                                                      child: CommonImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgGraph,
                                                                          height: getVerticalSize(
                                                                              169.00),
                                                                          width:
                                                                              getHorizontalSize(375.00))))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                        margin: getMargin(
                                                            left: 3,
                                                            top: 10,
                                                            right: 2),
                                                        decoration: AppDecoration
                                                            .outlineGreen500
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              22,
                                                                          top:
                                                                              27,
                                                                          right:
                                                                              22),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(bottom: 2),
                                                                            child: Text("Earn", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtDMSansRegular12.copyWith())),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 1),
                                                                            child: Text("Spent", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtDMSansRegular12.copyWith()))
                                                                      ])),
                                                              Padding(
                                                                  padding: getPadding(
                                                                      left: 22,
                                                                      top: 10,
                                                                      right: 19,
                                                                      bottom:
                                                                          28),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 1),
                                                                            child: Text("48_300", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtDMSansBold26.copyWith())),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(bottom: 2),
                                                                            child: Text("25_300", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtDMSansBold24.copyWith()))
                                                                      ]))
                                                            ])))
                                              ]))),
                                  const SizedBox(height: 20.00),
                                ]),
                          ),
                        ))
                      ]))),
        ],
      ),
    ));
  }
}
  // onTapImgArrowleft() {
  //   Get.back();
  // }

  // onTapTxtIncome() {
  //   Get.toNamed(AppRoutes.myIncomeScreen);
  // }

  // onTapTxtBudget() {
  //   Get.toNamed(AppRoutes.mybudgetDetailsScreen);
  // }
