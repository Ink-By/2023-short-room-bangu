import 'package:bangu/core/app_export.dart';
import 'package:bangu/presentation/information_list/information_list.dart';
// import 'package:bangu/widgets/app_bar/appbar_image.dart';
// import 'package:bangu/widgets/app_bar/appbar_title.dart';
// import 'package:bangu/widgets/app_bar/custom_app_bar.dart';
import 'package:bangu/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeFiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
          appBar: AppBar(
              backgroundColor: Colors.white,
              leading:IconButton(
                icon: const Icon(Icons.arrow_back),
                iconSize: 30,
                onPressed: () {
                  Navigator.pop(context, null);
                },
                color: Colors.black,
              )
          ),
            // appBar: CustomAppBar(
            //     height: getVerticalSize(49),
            //     leadingWidth: 24,
            //     leading: AppbarImage(
            //         height: getVerticalSize(18),
            //         width: getHorizontalSize(10),
            //         svgPath: ImageConstant.imgArrowleft,
            //         margin: getMargin(left: 14, top: 14, bottom: 15),
            //         onTap: () {
            //           onTapArrowleft(context);
            //         }),
            //     centerTitle: true,
            //     title: AppbarTitle(text: "방 정보입력 안내"),
            //     styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 44, top: 34, right: 44, bottom: 34),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgWarning,
                          height: getSize(75),
                          width: getSize(75),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 8),
                              child: Text("유의사항",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtSourceSansProSemiBold17Red700))),
                      Container(
                          width: getHorizontalSize(251),
                          margin: getMargin(top: 39, right: 20),
                          child: Text("합법적으로 방을 양도하기 위해서\n집주인/임대인의 동의가 필요합니다.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSourceSansProSemiBold17)),
                      Container(
                          width: getHorizontalSize(223),
                          margin: getMargin(top: 43, right: 48),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "집주인으로부터 “",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray900,
                                        fontSize: getFontSize(17),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: "전대동의서",
                                    style: TextStyle(
                                        color: ColorConstant.red700,
                                        fontSize: getFontSize(17),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: "”를 받은 후 진행해주세요.",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray900,
                                        fontSize: getFontSize(17),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600))
                              ]),
                              textAlign: TextAlign.left)),
                      // CustomButton(
                      //     height: getVerticalSize(40),
                      //     text: "방 정보 입력하기",
                      //     margin:
                      //         getMargin(left: 4, top: 52, right: 5, bottom: 5))
                    ]
                )
            ),
            floatingActionButton: FloatingActionButton.extended(

              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> InformationList()),);
                },
                label: Text('방 정보 입력하기'),

                backgroundColor: ColorConstant.blueGray600,

    ),
    ),
    );
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
    // Navigator.push(
    //   context,
    //   // MaterialPageRoute(builder: (context)=> "여기에 이전 페이지클래스 이름"()),
    // );
  }
}
