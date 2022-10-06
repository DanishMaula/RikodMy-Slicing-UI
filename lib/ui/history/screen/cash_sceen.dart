import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/history_data.dart';
import 'package:rikodmy/ui/history/detail/history_cash_transfer_detail.dart';
import 'package:rikodmy/widget/list_item/history_item.dart';

class CashScreen extends StatefulWidget {
  const CashScreen({super.key});

  @override
  State<CashScreen> createState() => _CashScreenState();
}

class _CashScreenState extends State<CashScreen> {
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
                        return HistoryCashTransferDetail(historyData: historyData,);
                      }));
                    },
                    child: HistoryItem(
                      historyData: historyData,
                    ),
                  );
                },
                itemCount: historyDataList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
