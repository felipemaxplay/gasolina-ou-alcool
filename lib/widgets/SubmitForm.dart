import 'package:flutter/material.dart';
import '../widgets/Loading_Button.dart';
import '../widgets/Input_Widget.dart';

class SubmitForm extends StatelessWidget {
  var controllerGas = TextEditingController(text: "0,00");
  var controllerAlc = TextEditingController(text: "0,00");
  var busy = false;
  VoidCallback submitFunction;

  SubmitForm(
      {required this.controllerGas,
      required this.controllerAlc,
      required this.busy,
      required this.submitFunction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: InputTextField(
            controllerTextInput: controllerGas,
            label: "Gasolina",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: InputTextField(
            controllerTextInput: controllerAlc,
            label: "Álcool",
          ),
        ),
        SizedBox(
          height: 25,
        ),
        LoadingButton(
          busy: busy,
          invert: false,
          onPress: submitFunction,
          text: "Calcular",
        )
      ],
    );
  }
}
