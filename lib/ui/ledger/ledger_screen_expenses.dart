import 'package:flutter/material.dart';
import 'package:rikodmy/models/expenses_data.dart';
import 'package:rikodmy/widget/list_item/expenses_item.dart';

import '../../utils/utils.dart';

class LedgerScreenExpenses extends StatefulWidget {
  const LedgerScreenExpenses({super.key});

  @override
  State<LedgerScreenExpenses> createState() => _LedgerScreenExpensesState();
}

class _LedgerScreenExpensesState extends State<LedgerScreenExpenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xffEB5757),
        child: const Icon(Icons.add),
      ),
      
      body:  SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
               physics: const NeverScrollableScrollPhysics(),  
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final LedgerExpenses ledgerExpenses = ledgerExpensesList[index];
                  return InkWell(
                    onTap: () { },
                    child: ExpensesItem(ledgerExpenses: ledgerExpenses),
                  );
                },
                itemCount: ledgerExpensesList.length,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
