import 'package:flutter/material.dart';

class ShowMeCounter extends StatelessWidget {
  const ShowMeCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Text(
          '0',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
