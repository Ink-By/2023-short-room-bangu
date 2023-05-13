import 'package:bangu/core/app_export.dart';
import 'package:bangu/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../home_page.dart';

class AndroidLargeSevenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 2,
            bottom: 2,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 121,
                    top: 11,
                    right: 121,
                    bottom: 11,
                  ),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "방 정보입력 완료",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSourceSansProSemiBold17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgCheckmark,
                height: getSize(
                  72,
                ),
                width: getSize(
                  72,
                ),
                margin: getMargin(
                  top: 41,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  218,
                ),
                margin: getMargin(
                  top: 34,
                ),
                child: Text(
                  "방 정보 입력이 완료되었습니다!\n양도 받을 분의 \n문의를 기다려주세요",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtSourceSansProSemiBold17,
                ),
              ),
              // CustomButton(
              //   height: getVerticalSize(
              //     40,
              //   ),
              //   text: "메인 화면으로 돌아가기",
              //   margin: getMargin(
              //     left: 47,
              //     top: 37,
              //     right: 50,
              //     bottom: 5,
              //   ),
              // ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(

          onPressed: () {
            Navigator.push(
              context,
              //여기에 메인화면 이랑 연결
              MaterialPageRoute(builder: (context)=> MainHome()),
            );
          }, label: Text('메인 화면으로 돌아가기'),

          backgroundColor: ColorConstant.blueGray600,


          // bottomNavigationBar: CustomButton(
          //     height: getVerticalSize(40),
          //     text: "입력 완료",
          //     margin: getMargin(left: 47, right: 50, bottom: 21))));
        ),
      ),
    );
  }
}
