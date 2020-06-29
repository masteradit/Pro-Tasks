import 'package:flutter/material.dart';

class TasksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(15.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black,
        border: Border.all(
          color: Colors.blue.shade700,
          width: 3.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade700.withAlpha(80),
            blurRadius: 5.0,
            spreadRadius: 12.0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                    tooltip: 'Add a new task!',
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                    tooltip: 'Search for tasks!',
                  ),
                  IconButton(
                    icon: Icon(Icons.sync),
                    onPressed: () {},
                    tooltip: 'Sync tasks!',
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 50,
              itemBuilder: (context, index) => ListTile(
                onTap: () {},
                title: Text('Task #$index'),
                trailing: IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
