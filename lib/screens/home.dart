import 'package:flutter/material.dart';

import '../widgets/clock_widget.dart';
import '../widgets/tasks_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: ClockWidget(),
            ),
            Expanded(
              flex: 3,
              child: TasksWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
