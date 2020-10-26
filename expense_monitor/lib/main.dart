import 'package:expense_monitor/widgets/add_transaction.dart';
import 'package:expense_monitor/widgets/trabsaction_list.dart';
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
              ),
              elevation: 5,
            ),
          ),
          AddTransactions(),
          TransactionList()
        ],
      ),
    );
  }
}
