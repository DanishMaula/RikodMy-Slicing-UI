import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/widget/others/search_bar.dart';

import '../../../utils/utils.dart';

class CompleteTransactionQuotation extends StatelessWidget {
  const CompleteTransactionQuotation({super.key});

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
            'Completed Transaction',
            style: title,
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                      child: SeacrchBarCustomer(),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: const Color(0xff2360AD),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 10),
                      child: const Icon(
                        Icons.add_rounded,
                        color: Color(0xffffffff),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Data Customer', style: titleTransaction),
                    Text.rich(
                      TextSpan(
                        text: '*',
                        style: star,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Text('Name', style: nameNumber),
                const SizedBox(height: 5),
                Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Text('Raeihan Alvaro', style: nameNumberValue),
                    )),
                const SizedBox(height: 5),
                Text('Number', style: nameNumber),
                const SizedBox(height: 5),
                Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Text('08123456789', style: nameNumberValue),
                    )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Status', style: titleTransaction),
                    Text.rich(
                      TextSpan(
                        text: '*',
                        style: star,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Text('QUOTATION', style: nameNumberValue),
                    )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Notes', style: titleTransaction),
                    Text.rich(
                      TextSpan(
                        text: '*',
                        style: star,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. Item sold only valid for 3 days for exchange',
                          style: notesStyle,
                        ),
                        Text('2. Warranty only valid for 14 days',
                            style: notesStyle),
                        const SizedBox(height: 20),
                        Text('Thankyou', style: notesStyle),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payment',
                      style: priceBottom,
                    ),
                    Text(
                      'RM 355.22',
                      style: priceBottom,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff2360AD),
                  ),
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text('COMPLETED PAYMENT', style: completePayment),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
