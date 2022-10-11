import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/utils.dart';
import '../../../widget/others/search_bar.dart';

class CompleteTransactionCash extends StatefulWidget {
  const CompleteTransactionCash({super.key});

  @override
  State<CompleteTransactionCash> createState() =>
      _CompleteTransactionCashState();
}

class _CompleteTransactionCashState extends State<CompleteTransactionCash> {
  bool valueCheck = false;

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
                      border: Border.all(
                          color: const Color(0xffE0E0E0), width: 1.5),
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
                      border: Border.all(
                          color: const Color(0xffE0E0E0), width: 1.5),
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
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'CASH',
                          style: nameNumberValue,
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xff2360AD),
                          size: 45,
                        )
                      ],
                    ),
                  ),
                ),
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
                    ),
                    const SizedBox(height: 5),
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
                    padding:
                        const EdgeInsets.only(left: 5, top: 10, bottom: 10),
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
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Report', style: titleTransaction),
                    Text.rich(
                      TextSpan(
                        text: '*',
                        style: star,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Image Report',
                          style: nameNumberValue,
                        ),
                        TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      height: 200,
                                      child: Column(
                                        children: [
                                          ListTile(
                                            title: Text('FROM GALLERY',
                                                textAlign: TextAlign.center,
                                                style: modalSheetStyle),
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          const Divider(
                                            color: Colors.grey,
                                          ),
                                          ListTile(
                                            title: Text(
                                              'TAKE A PHOTO',
                                              textAlign: TextAlign.center,
                                              style: modalSheetStyle,
                                            ),
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          const Divider(color: Colors.grey),
                                          ListTile(
                                            title: Text(
                                              'Cancel',
                                              textAlign: TextAlign.center,
                                              style: modalSheetCancelStyle,
                                            ),
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Text(
                              'Choose File',
                              style: totalPrice,
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Signatures',
                          style: nameNumberValue,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Make Signature',
                              style: totalPrice,
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: valueCheck,
                        onChanged: ((value) {
                          setState(() {
                            value = value;
                          });
                        })),
                    Text('Image and Signature Not Required',
                        style: notRequired),
                  ],
                ),
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
                    onPressed: () {
                      // dialog from bottom
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: 250,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Divider(
                                      color: Colors.grey,
                                      thickness: 2,
                                      endIndent: 170,
                                      indent: 170,
                                    ),
                                    const SizedBox(height: 10),
                                    Text('Success Checkout',
                                        style: modalSheetCompleteStyle),
                                    Text('Print Transaction?',
                                        style: titleDialog),
                                    const SizedBox(height: 30),
                                    Column(
                                      children: [
                                        MaterialButton(
                                          onPressed: () {},
                                          height: 50,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          color: const Color(0xff2360AD),
                                          minWidth: double.infinity,
                                          child: Text('PRINT', style: addCart),
                                        ),
                                        const SizedBox(height: 10),
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/fileResult');
                                          },
                                          height: 50,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          color: const Color(0xff2360AD),
                                          minWidth: double.infinity,
                                          child: Text('GENERATE PDF',
                                              style: addCart),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Text('COMPLETED PAYMENT', style: completePayment),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
