import 'package:flutter/material.dart';
import '../widgets/Logo_Widget.dart';
import '../widgets/SubmitForm.dart';
import '../widgets/Success_Widget.dart';

class MainScrenn extends StatefulWidget {
  @override
  _MainScrennState createState() => _MainScrennState();
}

class _MainScrennState extends State<MainScrenn> {
  Color _cor = Colors.deepOrange;
  var _controllerGas = TextEditingController(text: "0,00");
  var _controllerAlc = TextEditingController(text: "0,00");
  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa usar álcool";

  Future calculate() async {
    double alc =
        double.parse(_controllerAlc.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;
    double gas =
        double.parse(_controllerGas.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;
    double res = alc / gas;

    setState(() {
      _cor = Colors.blueGrey;
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(
      const Duration(seconds: 2),
      () {
        setState(
          () {
            if (res >= 0.7) {
              _resultText = "Compensa usar Gasolina";
            } else {
              _resultText = "Compensa usar Álcool";
            }

            _busy = false;
            _completed = true;
          },
        );
      },
    );
  }

  void reset() {
    setState(() {
      _controllerAlc = new TextEditingController(text: "0,00");
      _controllerGas = new TextEditingController(text: "0,00");
      _completed = false;
      _busy = false;
      _cor = Colors.deepOrange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        color: _cor,
        child: ListView(
          children: <Widget>[
            LogoAlcoolouGasolina(),
            _completed
                ? SuccessWidget(
                    result: _resultText,
                    reset: reset,
                  )
                : SubmitForm(
                    controllerGas: _controllerGas,
                    controllerAlc: _controllerAlc,
                    busy: _busy,
                    submitFunction: calculate,
                  ),
          ],
        ),
      ),
    );
  }
}
