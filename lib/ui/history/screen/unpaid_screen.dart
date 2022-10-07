import 'package:flutter/material.dart';

import '../../../models/history_data.dart';
import '../../../widget/list_item/history_item.dart';
import '../detail/history_unpaid_detail.dart';

class UnpaidScreen extends StatefulWidget {
  const UnpaidScreen({super.key});

  @override
  State<UnpaidScreen> createState() => _UnpaidScreenState();
}

class _UnpaidScreenState extends State<UnpaidScreen> {
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
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                            return HistoryUnpaidDetail(historyData: historyData);
                          }));
                    },
                    child: HistoryItem(
                      historyData: historyData,
                    ),
                  );
                },
                itemCount: historyDataList.length - 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
