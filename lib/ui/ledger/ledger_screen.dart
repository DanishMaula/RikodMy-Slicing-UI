import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class LedgerScreen extends StatefulWidget {
  const LedgerScreen({super.key});

  @override
  State<LedgerScreen> createState() => _LedgerScreenState();
}

class _LedgerScreenState extends State<LedgerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff2360AD),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Ledger',
            style: title,
          )),
    );
  }
}
