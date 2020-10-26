import 'package:expense_monitor/models/transaction.dart';
import 'package:expense_monitor/widgets/add_transaction.dart';
import 'package:expense_monitor/widgets/trabsaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
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

  void _addTransactions(String title, double amount) {
    final nTx = Transaction(
        title: title,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransaction.add(nTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddTransactions(_addTransactions),
        TransactionList(_userTransaction),
      ],
    );
  }
}
