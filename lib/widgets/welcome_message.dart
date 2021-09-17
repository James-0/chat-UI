import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.blueAccent,
      child: Padding(
        padding: EdgeInsets.only(top: 60.0, left: 30.0),
        child: Text(
          'Chat with\nyour friends',
          style: TextStyle(
              fontSize: 28.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
