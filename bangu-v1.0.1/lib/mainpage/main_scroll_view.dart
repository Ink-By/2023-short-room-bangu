import 'package:flutter/material.dart';

List<String> roomimages = [
  'images/room1.jpg',
  'images/room2.jpg',
  'images/room3.jpg',
  'images/room4.jpg',
];

class MainScrollView extends StatefulWidget {
  const MainScrollView({Key? key}) : super(key: key);

  @override
  _MainScrollView createState() => _MainScrollView();
}

class _MainScrollView extends State<MainScrollView> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(height:10),
          Container(
            margin: const EdgeInsets.fromLTRB(35, 10, 35, 0),
            child: Row(
                children: [
                  Image.asset(roomimages[0], width:100, height:100),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 00, 00, 0),
                      child :Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text("월세 300/30",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.0
                              )),
                          Text("오피스텔. 방1개."),
                          Text("궁동 근처 자취방 양도합니다!!!!")
                        ],
                      ))
                ]
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                        width: 1,
                        color: Colors.grey
                    ),
                    bottom: BorderSide(
                        width:1,
                        color:Colors.grey
                    )
                )
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(35, 10, 35, 0),
            child: Row(
                children: [
                  Image.asset(roomimages[1], width:100, height:100),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 00, 00, 0),
                      child : Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text("월세 300/35",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.0
                              )),
                          Text("오피스텔. 방1개. 고층."),
                          Text("신궁동 월세 35 자취방 양도합니다.")
                        ],
                      )
                  )]
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                        width: 1,
                        color: Colors.grey
                    ),
                    bottom: BorderSide(
                        width:1,
                        color:Colors.grey
                    )
                )
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(35, 10, 35, 0),
            child: Row(
                children: [
                  Image.asset(roomimages[2], width:100, height:100),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 00, 00, 0),
                      child : Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text("월세 350/40",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.0
                              )),
                          Text("오피스텔. 방2개."),
                          Text("방2개에 40 자취방 양도합니다~!")
                        ],
                      )
                  )]
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                        width: 1,
                        color: Colors.grey
                    ),
                    bottom: BorderSide(
                        width:1,
                        color:Colors.grey
                    )
                )
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(35, 10, 35, 0),
            child: Row(
                children: [
                  Image.asset(roomimages[3], width:100, height:100),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 00, 00, 0),
                      child : Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text("월세 300/40",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.0
                              )),
                          Text("학교근처. 오피스텔. 방1.5개."),
                          Text("죽동 양도합니다.")
                        ],
                      )
                  )]
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                        width: 1,
                        color: Colors.grey
                    ),
                    bottom: BorderSide(
                        width:1,
                        color:Colors.grey
                    )
                )
            ),
          )
        ]
    );
  }
}