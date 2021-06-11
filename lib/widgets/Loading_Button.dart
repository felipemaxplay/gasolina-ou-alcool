import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  VoidCallback? onPress;
  var text = "";

  LoadingButton(
      {required this.busy,
      required this.invert,
      required this.onPress,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: invert
                  ? Color.fromRGBO(165, 0, 255, 1)
                  : Color.fromRGBO(0, 90, 225, 0.7),
            ),
            child: FlatButton(
              onPressed: onPress,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 45.0,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
            ),
          );
  }
}
