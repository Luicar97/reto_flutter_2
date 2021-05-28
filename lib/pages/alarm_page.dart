import 'package:flutter/material.dart';
import 'package:reto_simple_2/widgets/alarm_body_card_widget.dart';
import 'package:reto_simple_2/widgets/alarm_card_widget.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({Key key}) : super(key: key);

  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: AlarmCardWidget(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: AlarmBodyCardWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
