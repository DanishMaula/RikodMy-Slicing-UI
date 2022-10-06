import 'package:flutter/material.dart';

import '../../../models/history_data.dart';
import '../../../widget/list_item/history_item.dart';

class QuotationScreen extends StatefulWidget {
  const QuotationScreen({super.key});

  @override
  State<QuotationScreen> createState() => _QuotationScreenState();
}

class _QuotationScreenState extends State<QuotationScreen> {
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
                  final HistoryData historyData =
                      historyDataList[index];
                  return InkWell(
                    onTap: () {
                      
                    },
                    child: HistoryItem(historyData: historyData,),
                  );
                },
                itemCount: historyDataList.length - 2, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}