import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/petty_cash_data.dart';

import '../../../utils/utils.dart';

class LedgerPettyCashDetail extends StatefulWidget {
  final LedgerPettyCash pettyCash;

  const LedgerPettyCashDetail({super.key, required this.pettyCash});

  @override
  State<LedgerPettyCashDetail> createState() => _LedgerPettyCashDetailState();
}

class _LedgerPettyCashDetailState extends State<LedgerPettyCashDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff2360AD),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            'Details',
            style: title,
          )),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(widget.pettyCash.image,
                  fit: BoxFit.cover, width: double.infinity, height: 250),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xff2360AD),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 11, bottom: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.pettyCash.price,
                        style: priceDetail,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.pettyCash.desc,
                        style: descDetail,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
