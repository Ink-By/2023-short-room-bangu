import 'package:flutter/material.dart';
import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                body: Padding(
                    padding: EdgeInsets.all(100),
                    child:Column(
                        children:[
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText:'email',
                                border: OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            keyboardType : TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'password',
                                border : OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height:50),
                          ElevatedButton(
                              onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => MainHome())); },
                              child: Text("LogIn"),
                              style:ElevatedButton.styleFrom(
                                padding:EdgeInsets.all(15.0),
                                textStyle: TextStyle(color:Colors.white),
                              )
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}