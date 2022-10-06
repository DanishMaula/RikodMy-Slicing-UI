import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../models/history_data.dart';
import '../../utils/utils.dart';

class HistoryItem extends StatefulWidget {
final HistoryData historyData;

  const HistoryItem({super.key, required this.historyData});

  @override
  State<HistoryItem> createState() => _HistoryItemState();
}

class _HistoryItemState extends State<HistoryItem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
         top: 10
        ),
        child: Container(
          decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               border: Border.all(color: const Color(0xffE0E0E0), 
               width: 2.0)
               ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                widget.historyData.image,
                height: 110,
                width: 110,
                fit: BoxFit.cover,
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.historyData.code,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: historyItemCode,
                          ),
                          Text(
                            widget.historyData.date,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: historyItemDateClock,
                          ),
                        ],
                      ),
                      Text(widget.historyData.name, style: historyItemName,
                      maxLines: 2, overflow: TextOverflow.ellipsis,),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.historyData.price,
                            style: historyItemPrice
                          ),
                          Text(
                            widget.historyData.clock,
                            style: historyItemDateClock,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}