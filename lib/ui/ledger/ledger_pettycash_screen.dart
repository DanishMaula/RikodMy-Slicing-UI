import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/widget/list_item/petty_cash_item.dart';

import '../../models/expenses_data.dart';
import '../../models/petty_cash_data.dart';
import 'add_data_ledger.dart';

class LedgerPettyCashScreen extends StatefulWidget {
  final String title;

  const LedgerPettyCashScreen({super.key, required this.title});

  @override
  State<LedgerPettyCashScreen> createState() => _LedgerPettyCashScreenState();
}

class _LedgerPettyCashScreenState extends State<LedgerPettyCashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddDataLedger(title: 'Add Petty Cash Data', text: 'Petty Cash');
          }));
        },
        backgroundColor: const Color(0xff2360AD),
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
                  final LedgerPettyCash ledgerPettyCash =
                      ledgerPettyCashList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/ledgerPettyCashDetail');
                    },
                    child: PettyCashItem(ledgerPettyCash: ledgerPettyCash),
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
