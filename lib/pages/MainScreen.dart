import 'package:flutter/material.dart';

class MainScrenn extends StatelessWidget {
  const MainScrenn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TODO appbar"),
      ),
      body: Center(
        child: Text("TODO body."),
      ),
    );
  }
}
