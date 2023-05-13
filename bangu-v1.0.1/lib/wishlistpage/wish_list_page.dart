import 'package:flutter/material.dart';

List<String> roomimages = [
  'images/room1.jpg',
  'images/room2.jpg',
  'images/room3.jpg',
  'images/room4.jpg',
];

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(10, 5, 0, 10),
            child: const Text(
              '찜 목록',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.0
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                          Text("오피스텔. 방1개.")
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
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                          Text("오피스텔. 방1개. 고층.")
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
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                          Text("오피스텔. 방2개.")
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
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                          Text("학교근처. 오피스텔. 방1.5개.")
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
        ]));
  }
}