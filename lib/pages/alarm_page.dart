import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text('Alarm page'),
        ],
      )),
    );
  }
}
