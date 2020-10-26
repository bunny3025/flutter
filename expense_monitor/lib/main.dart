import 'package:expense_monitor/transaction.dart';
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
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      amount: 30,
      date: DateTime.now(),
      title: 'Apple',
    ),
    Transaction(
      id: 't2',
      amount: 10,
      date: DateTime.now(),
      title: 'Orange',
    ),
    Transaction(
      id: 't3',
      amount: 20,
      date: DateTime.now(),
      title: 'Banana',
    ),
    Transaction(
      id: 't1',
      amount: 60,
      date: DateTime.now(),
      title: 'Lube',
    )
  ];

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
          Column(
            children: transaction.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(tx.amount.toString()),
                    ),
                    Column(
                      children: <Widget>[
                        Text(tx.title),
                        Text(tx.date.toString())
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
