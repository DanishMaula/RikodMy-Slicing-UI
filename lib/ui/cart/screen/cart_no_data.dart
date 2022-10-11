import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/utils.dart';

class CartNoData extends StatefulWidget {
  const CartNoData({super.key});

  @override
  State<CartNoData> createState() => _CartNoDataState();
}

class _CartNoDataState extends State<CartNoData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart', style: title),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff2360AD),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/navBar');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: false,
                        shape: const CircleBorder(),
                        onChanged: (bool? value) {},
                      ),
                      Text('Select All', style: textNoData),
                    ],
                  ),
                  Text('Remove All', style: textNoData),
                ],
              ),
              Image.asset('assets/images/noData.png'),
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
              Text('Total :', style: textNoData),
              Row(
                children: [
                  Text(
                    '0',
                    style: textNoData,
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: MaterialButton(
                      onPressed: () {},
                      color: const Color(0xffE0E0E0),
                      child: Text(
                        'CONTINUE',
                        style: buttonNoData,
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
