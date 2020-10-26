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
      body: Center(
        child: Text('Expense Monitor Playground !!!'),
      ),
    );
  }
}
