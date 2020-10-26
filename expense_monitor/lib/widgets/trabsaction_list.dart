import 'package:expense_monitor/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<TransactionList> {
  final List<Transaction> userTransaction = [
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
    return Column(
      children: userTransaction.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 3,
                  ),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Text(
                  '\u20B9 ${tx.amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      tx.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      DateFormat.yMMMMd().format(tx.date),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
