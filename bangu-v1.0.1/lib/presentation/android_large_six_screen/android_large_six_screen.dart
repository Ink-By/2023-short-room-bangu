import 'package:bangu/core/app_export.dart';
// import 'package:bangu/widgets/app_bar/appbar_image.dart';
// import 'package:bangu/widgets/app_bar/appbar_title.dart';
// import 'package:bangu/widgets/app_bar/custom_app_bar.dart';
import 'package:bangu/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeSixScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            // appBar: CustomAppBar(
            //     height: getVerticalSize(47),
            //     leadingWidth: 24,
            //     leading: AppbarImage(
            //         height: getVerticalSize(18),
            //         width: getHorizontalSize(10),
            //         svgPath: ImageConstant.imgArrowleft,
            //         margin: getMargin(left: 14, top: 14, bottom: 15),
            //         onTap: () {
            //           onTapArrowleft1(context);
            //         }),
            //     centerTitle: true,
            //     title: AppbarTitle(text: "방 정보입력"),
            //     styleType: Style.bgFillWhiteA700),
            appBar: AppBar(
                leading:IconButton(
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context, null);
                  },
                  color: Colors.black,
                )
            ),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 14, top: 54, right: 14, bottom: 54),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgPlus,
                          height: getSize(23),
                          width: getSize(23),
                          margin: getMargin(top: 18)),
                      Container(
                          width: getHorizontalSize(69),
                          margin: getMargin(top: 22),
                          child: Text("사진 추가\n(3장 이상)",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtSourceSansProSemiBold17)),
                      Container(
                          margin: getMargin(top: 63, right: 2),
                          padding: getPadding(
                              left: 11, top: 8, right: 11, bottom: 8),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("방종류",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSourceSansProSemiBold17),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 2, bottom: 2))
                              ])),
                      Container(
                          margin: getMargin(top: 12, right: 2),
                          padding:
                              getPadding(left: 9, top: 8, right: 9, bottom: 8),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("위치",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold17)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(8),
                                    margin:
                                        getMargin(top: 2, right: 2, bottom: 2))
                              ])),
                      Container(
                          margin: getMargin(top: 12, right: 2),
                          padding:
                              getPadding(left: 9, top: 7, right: 9, bottom: 7),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("보증금/월세",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSourceSansProSemiBold17),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(8),
                                    margin:
                                        getMargin(top: 3, right: 2, bottom: 1))
                              ])),
                      Container(
                          margin: getMargin(top: 12, right: 2),
                          padding: getPadding(
                              left: 11, top: 7, right: 11, bottom: 7),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("임대 기간",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold17)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 3, bottom: 3))
                              ])),
                      Container(
                          margin: getMargin(top: 12, right: 2),
                          padding: getPadding(
                              left: 11, top: 7, right: 11, bottom: 7),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("관리비",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold17)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 3, bottom: 3))
                              ])),
                      Container(
                          margin: getMargin(top: 12, right: 2),
                          padding: getPadding(
                              left: 11, top: 7, right: 11, bottom: 7),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("주차",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold17)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 3, bottom: 3))
                              ])),
                      Container(
                          margin: getMargin(top: 12, right: 2),
                          padding: getPadding(
                              left: 11, top: 7, right: 11, bottom: 7),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("추가 정보 작성",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold17)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 3, bottom: 3))
                              ])),
                      Container(
                          margin: getMargin(top: 12, right: 2),
                          padding: getPadding(
                              left: 11, top: 7, right: 11, bottom: 7),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("전대 동의서 등록",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProSemiBold17)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 3, bottom: 3))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(40),
                text: "입력 완료",
                margin: getMargin(left: 47, right: 50, bottom: 21))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
