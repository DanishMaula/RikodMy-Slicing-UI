import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/history_data.dart';

import '../../../utils/utils.dart';

class HistoryVoidSalesDetail extends StatefulWidget {
  final HistoryData historyData;

  const HistoryVoidSalesDetail({super.key, required this.historyData});

  @override
  State<HistoryVoidSalesDetail> createState() => _HistoryVoidSalesDetailState();
}

class _HistoryVoidSalesDetailState extends State<HistoryVoidSalesDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: const Color(0xff2360AD),
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Details',
          style: title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Customer', style: nameNumber),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color(0xffE0E0E0), width: 2.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Image.network(
                          widget.historyData.image,
                          height: 110,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.historyData.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: historyItemName,
                                  ),
                                  Text(
                                    widget.historyData.date,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: historyItemDateClock,
                                  ),
                                ],
                              ),
                              Text(
                                '081412325676',
                                style: nameNumber,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Cash',
                                    style: historyItemPrice,
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
            ),
            const SizedBox(height: 20),
            Text('Product', style: nameNumber),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 15,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/xiaomi.png',
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Xiao Mi Yi || 4K',
                          style: itemName,
                        ),
                        Text(
                          'Stock : 15',
                          style: notesStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text('Reason', style: nameNumber),
            const SizedBox(height: 5),
            Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffE0E0E0))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Text(
                    'Ada keperluan mendadak',
                    style: dialogHistoryReason,
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
          height: 100,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payment',
                      style: expensesDesc,
                    ),
                    Text(
                      'RM 100.19',
                      style: historyDetailsPrice,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffEBEBEB),
                  ),
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text('PAY NOW', style: buttonTextVoidSales),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
