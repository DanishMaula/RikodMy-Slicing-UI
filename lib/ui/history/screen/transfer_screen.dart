import 'package:flutter/material.dart';
import 'package:rikodmy/ui/history/detail/history_cash_transfer_detail.dart';

import '../../../models/history_data.dart';
import '../../../widget/list_item/history_item.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final HistoryData historyData = historyDataList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return  HistoryCashTransferDetail(historyData: historyData,);
                      }));
                    },
                    child: HistoryItem(
                      historyData: historyData,
                    ),
                  );
                },
                itemCount: historyDataList.length - 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
