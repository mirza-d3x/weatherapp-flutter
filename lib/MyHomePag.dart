import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:  BoxDecoration(
          // color: Colors.yellow,
          image: DecorationImage(
            image: AssetImage("assets/images/nightmoon.jpg"),
          fit: BoxFit.cover),
        ),
        child: Text("9"),
      ),
    );
  }
}
