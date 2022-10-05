import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/expenses_data%20copy.dart';
import 'package:rikodmy/widget/list_item/petty_cash_item.dart';

import '../../models/expenses_data.dart';

class LedgerPettyCashScreen extends StatefulWidget {
  const LedgerPettyCashScreen({super.key});

  @override
  State<LedgerPettyCashScreen> createState() => _LedgerPettyCashScreenState();
}

class _LedgerPettyCashScreenState extends State<LedgerPettyCashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff2360AD),
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
                  final LedgerPettyCash ledgerPettyCash = ledgerPettyCashList[index];
                  return InkWell(
                    onTap: () { },
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