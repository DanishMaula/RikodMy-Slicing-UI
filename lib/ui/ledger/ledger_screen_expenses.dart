import 'package:flutter/material.dart';
import 'package:rikodmy/models/expenses_data.dart';
import 'package:rikodmy/ui/ledger/add_data_ledger.dart';
import 'package:rikodmy/ui/ledger/detail/ledger_expenses_detail.dart';
import 'package:rikodmy/widget/list_item/expenses_item.dart';

import '../../utils/utils.dart';

class LedgerScreenExpenses extends StatefulWidget {
  final String title;

  const LedgerScreenExpenses({super.key, required this.title});

  @override
  State<LedgerScreenExpenses> createState() => _LedgerScreenExpensesState();
}

class _LedgerScreenExpensesState extends State<LedgerScreenExpenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddDataLedger(title: 'Add Expenses Data', text: 'Expenses');
          }));
        },
        backgroundColor: const Color(0xffEB5757),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final LedgerExpenses ledgerExpenses =
                      ledgerExpensesList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LedgerExpensesDetail(
                            ledgerExpenses: ledgerExpenses);
                      }));
                    },
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
