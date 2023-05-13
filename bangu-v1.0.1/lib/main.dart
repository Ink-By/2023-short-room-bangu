import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bangu/routes/app_routes.dart';

import 'login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TempStart(),
    );
  }
}

class TempStart extends StatefulWidget {
  const TempStart({ Key? key }) : super(key: key);

  @override
  State<TempStart> createState() => _Main_LogoState();
}

class _Main_LogoState extends State<TempStart> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255,79, 99, 140),
          body: Padding(
              padding: EdgeInsets.only(top:150, right:100, left:100, bottom:150),
              child : Column(
                  children: [Image.asset(
                    "images/logo.png",
                    width: 500,
                    height: 200,
                    // fit: BoxFit.fill,
                  ),
                    SizedBox(height:100),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text("이메일로 로그인하기"),
                        style: ElevatedButton.styleFrom(

                          padding: EdgeInsets.all(15.0),
                          textStyle: TextStyle(color: Colors.white),
                        )
                    )
                  ]
              )
          ),
        ),
      ),
    );
  }
}




// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         visualDensity: VisualDensity.standard,
//       ),
//       title: 'bangu',
//       debugShowCheckedModeBanner: false,
//       initialRoute: AppRoutes.informationListScreen,
//       routes: AppRoutes.routes,
//     );
//   }
// }
