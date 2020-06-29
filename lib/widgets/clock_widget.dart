import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:segment_display/segment_display.dart';

import '../functions/hex_to_color_function.dart';

class ClockWidget extends StatefulWidget {
  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  double seconds;

  _currentTime() {
    String _hour = '${DateTime.now().hour.toString().padLeft(2, "0")}';
    String _minute = '${DateTime.now().minute.toString().padLeft(2, "0")}';
    return "$_hour : $_minute";
  }

  _triggerUpdate() {
    Timer.periodic(
        Duration(seconds: 1),
        (Timer timer) => setState(
              () {
                seconds = DateTime.now().second / 60;
              },
            ));
  }

  @override
  void initState() {
    super.initState();
    seconds = DateTime.now().second / 60;
    _triggerUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                width: 250.0,
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withAlpha(80),
                      blurRadius: 5.0,
                      spreadRadius: 12.0,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                width: 340,
                height: 340,
                padding: EdgeInsets.only(right: 11.0),
                child: Center(
                  child: SevenSegmentDisplay(
                    value: _currentTime(),
                    size: 5.0,
                    characterSpacing: 4.0,
                    segmentStyle: HexSegmentStyle(
                      enabledColor: Colors.blue.shade700,
                      disabledColor: Colors.blue.shade700.withOpacity(0.15),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: CircularPercentIndicator(
                radius: 250.0,
                lineWidth: 6.0,
                animation: false,
                percent: seconds,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: hexToColor('#2c3143'),
                progressColor: Colors.blue.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
