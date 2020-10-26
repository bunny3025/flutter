import 'package:flutter/material.dart';

void main() => runApp(ExpenseMonitorApp());

class ExpenseMonitorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Monitor Application',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Monitor'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Container(
                color: Colors.blue,
                child: Text(
                  'Chart placeholder',
                ),
                //width: double.infinity,
              ),
              elevation: 5,
            ),
          ),
          Card(
            child: Text('all the tx avail here'),
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
