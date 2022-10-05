import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/expenses_data.dart';

import '../../utils/utils.dart';

class ExpensesItem extends StatefulWidget {
  final LedgerExpenses ledgerExpenses;

  const ExpensesItem({super.key, required this.ledgerExpenses});

  @override
  State<ExpensesItem> createState() => _ExpensesItemState();
}

class _ExpensesItemState extends State<ExpensesItem> {
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
                    widget.ledgerExpenses.image,
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
                          widget.ledgerExpenses.price,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: expensesPrice,
                        ),
                        Text(widget.ledgerExpenses.desc, style: itemDesc,
                        maxLines: 2, overflow: TextOverflow.ellipsis,),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.ledgerExpenses.date,
                              style: expensesDate,
                            ),
                            Text(
                              'See Detail',
                              style: expensesSeeDetail,
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
    );
  }
}
