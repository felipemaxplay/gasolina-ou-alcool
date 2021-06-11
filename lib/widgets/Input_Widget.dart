import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputTextField extends StatelessWidget {
  var maskMoneyMoney = MaskTextInputFormatter(mask: "#,##");
  String label = "";
  var controllerTextInput = TextEditingController();

  InputTextField({required this.controllerTextInput, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.0,
              fontFamily: "Big Shoulders Display",
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: TextFormField(
            inputFormatters: [maskMoneyMoney],
            controller: controllerTextInput,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.0,
              fontFamily: "Big Shoulders Display",
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
