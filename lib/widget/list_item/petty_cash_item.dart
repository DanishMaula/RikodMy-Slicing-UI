import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/expenses_data%20copy.dart';

import '../../utils/utils.dart';

class PettyCashItem extends StatefulWidget {
 final LedgerPettyCash ledgerPettyCash;

  const PettyCashItem({super.key, required this.ledgerPettyCash});

  @override
  State<PettyCashItem> createState() => _PettyCashItemState();
}

class _PettyCashItemState extends State<PettyCashItem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
         top: 10
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(color: const Color(0xffE0E0E0), 
                 width: 2.0)
                 ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Image.network(
                    widget.ledgerPettyCash.image,
                    height: 110,
                    width: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          widget.ledgerPettyCash.price,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: pettyCashPrice,
                        ),
                        Text(widget.ledgerPettyCash.desc, style: itemDesc,
                        maxLines: 2, overflow: TextOverflow.ellipsis,),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.ledgerPettyCash.date,
                              style: expensesDate,
                            ),
                            Text(
                              'See Detail',
                              style: pettyCashSeeDetail,
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
      ),
    );;
  }
}