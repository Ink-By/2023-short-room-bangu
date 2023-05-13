import 'package:flutter/material.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  children: [Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                    child: const Text(
                      '채팅 목록',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.0
                      ),
                    ),
                  ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        width: double.infinity,
                        height: 70,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '변인경',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '몇시쯤 가면 될까요?',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        width: double.infinity,
                        height: 70,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '조단현',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '안녕하세요~!',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ),InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        width: double.infinity,
                        height: 70,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '임세빈',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '감사합니다!',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
              ));
        }));
  }
}