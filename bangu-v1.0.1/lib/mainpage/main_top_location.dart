import 'package:flutter/material.dart';

class MainTopLocation extends StatelessWidget {
  const MainTopLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(height:150),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
            "현재위치",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
            Text(
                "궁동",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )
            ),

          ],
        )
      ],
    );
  }
}