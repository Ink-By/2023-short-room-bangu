import 'package:flutter/material.dart';

import '../presentation/android_large_five_screen/android_large_five_screen.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPage();
}

class _UserPage extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SafeArea(
            child:Scaffold(
                body: Padding(
                    padding: EdgeInsets.only(top:100, right:50, left: 50, bottom: 100),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children : [
                          Text('임세빈',style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                              children:<Widget>[
                                ElevatedButton(onPressed: null , child: Text('회원 정보 수정', style:TextStyle(fontSize:15,fontWeight: FontWeight.bold))),
                                SizedBox(width: 20),
                                ElevatedButton(onPressed: null, child: Text('회원 탈퇴',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)))
                              ]
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => AndroidLargeFiveScreen()));
                          }
                              , child: Text('방 내놓기',style:TextStyle(fontSize:12,fontWeight: FontWeight.bold))),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: null, child: Text('전대차 계약서 다운로드',style:TextStyle(fontSize:12,fontWeight: FontWeight.bold))),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: null, child: Text('내가 내놓은 방',style:TextStyle(fontSize:12,fontWeight: FontWeight.bold))),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: null, child: Text('내가 작성한 후기',style:TextStyle(fontSize:12,fontWeight: FontWeight.bold))),
                          SizedBox(height: 10,),
                        ]
                    )
                ))));
  }
}