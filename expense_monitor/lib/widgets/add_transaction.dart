import 'package:flutter/material.dart';

class AddTransactions extends StatelessWidget {
  final inputTitleController = TextEditingController();
  final inputAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: inputTitleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: inputAmountController,
            ),
            FlatButton(
              child: Text(
                'Add Expense',
              ),
              textColor: Colors.orange,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
