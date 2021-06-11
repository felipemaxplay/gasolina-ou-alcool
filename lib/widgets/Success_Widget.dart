import 'package:flutter/material.dart';
import '../widgets/Loading_Button.dart';

class SuccessWidget extends StatelessWidget {
  String result = "";
  VoidCallback reset;

  SuccessWidget({required this.result, required this.reset});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromRGBO(0, 90, 225, 0.7),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            result,
            style: TextStyle(
              color: Color.fromRGBO(0, 255, 165, 1),
              fontSize: 40,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          LoadingButton(
            busy: false,
            invert: true,
            onPress: reset,
            text: "Calcular de Novo",
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
