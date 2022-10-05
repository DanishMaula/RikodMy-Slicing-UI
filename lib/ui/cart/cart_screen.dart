import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/all_product_data.dart';

import '../../utils/utils.dart';

class CartScreen extends StatefulWidget {
  final AllProduct allProduct;

  const CartScreen({
    super.key,
    required this.allProduct,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isChecked = false;
  String? startPrice = 'RM 0';
  String? endPrice = 'RM 355.22';

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
            'Cart',
            style: title,
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // circular check box
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: isChecked,
                        shape: const CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                            startPrice = 'RM 355.22';
                          });
                        },
                      ),
                      Text('Select All', style: cartSelectAll),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              title: Image.asset(
                                'assets/images/warn.png',
                                width: 50,
                                height: 45,
                              ),
                              content: Text(
                                'Are You Sure?',
                                style: titleDialog,
                                textAlign: TextAlign.center,
                              ),
                              actions: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: 45,
                                      width: 145,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Color(0xffE0E0E0)),
                                        ),
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'No',
                                            style: buttonPaymentDialog,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    SizedBox(
                                      height: 45,
                                      width: 145,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xff2360AD),
                                        ),
                                        child: MaterialButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Yes',
                                            style: buttonYesDialog,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        'Remove All',
                        style: cartRemoveAll,
                      ))
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    shape: const CircleBorder(),
                    onChanged: (bool? value) {},
                  ),
            
                  //item cart
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 15,
                      ),
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
                                child: Image.asset(
                                  'assets/images/xiaomi.png',
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
                                        widget.allProduct.name,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: itemName,
                                      ),
                                      Text(
                                        'RM 100.19',
                                        style: totalPrice,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 16, bottom: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Qty : 2',
                                              style: itemStock,
                                            ),
                                            Text(
                                              widget.allProduct.price,
                                              style: itemPrice,
                                            )
                                          ],
                                        ),
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
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    shape: const CircleBorder(),
                    onChanged: (bool? value) {},
                  ),
            
                  //item cart
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 15,
                      ),
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
                                child: Image.asset(
                                  'assets/images/xiaomi.png',
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
                                        widget.allProduct.name,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: itemName,
                                      ),
                                      Text(
                                        'RM 122.16',
                                        style: totalPrice,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 16, bottom: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Qty : 4',
                                              style: itemStock,
                                            ),
                                            Text(
                                              widget.allProduct.price,
                                              style: itemPrice,
                                            )
                                          ],
                                        ),
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
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(color: const Color(0xffffffff), boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3))
        ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total :', style: totalCart),
              Row(
                children: [
                  Text(
                    isChecked == true ? 'RM 222.35' : 'RM 0',
                    style: totalPrice,
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: MaterialButton(
                      onPressed: () {
                        // show dialog
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              title: Image.asset(
                                'assets/images/warn.png',
                                width: 50,
                                height: 45,
                              ),
                              content: Text(
                                'Do you want to make quotation?',
                                style: titleDialog,
                              ),
                              actions: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: 45,
                                      width: 145,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Color(0xff2360AD)),
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context,
                                                '/completeTransactionQuotation');
                                          },
                                          child: Text(
                                            'Yes',
                                            style: buttonYesDialog,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    SizedBox(
                                      height: 45,
                                      width: 145,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Color(0xffE0E0E0))),
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/completeTransactionCash');
                                          },
                                          child: Text(
                                            'Go to payment',
                                            style: buttonPaymentDialog,
                                            maxLines: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                          },
                        );
                      },
                      color: const Color(0xff2360AD),
                      child: Text(
                        'CONTINUE',
                        style: addCart,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
