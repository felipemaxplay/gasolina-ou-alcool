import 'package:flutter/material.dart';

class LogoAlcoolouGasolina extends StatelessWidget {
  const LogoAlcoolouGasolina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        Image.asset(
          "assets/images/aog-white.png",
          height: 100.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Gasolina ou Álcool?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
            fontFamily: "Big Shoulders Display",
          ),
        ),
      ],
    );
  }
}
