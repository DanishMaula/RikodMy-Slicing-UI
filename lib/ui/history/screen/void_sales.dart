import 'package:flutter/material.dart';

import '../../../models/history_data.dart';
import '../../../widget/list_item/history_item.dart';

class VoidSalesScreen extends StatefulWidget {
  const VoidSalesScreen({super.key});

  @override
  State<VoidSalesScreen> createState() => _VoidSalesScreenState();
}

class _VoidSalesScreenState extends State<VoidSalesScreen> {
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
                itemCount: historyDataList.length - 4, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}