import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:rikodmy/models/data_customer.dart';

import '../../../utils/utils.dart';

class CustomerDetail extends StatefulWidget {
  final AllCustomer allCustomer;

  const CustomerDetail({super.key, required this.allCustomer});

  @override
  State<CustomerDetail> createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff2360AD),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        title: Text(
          'Customer Detail',
          style: title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: Image.network(widget.allCustomer.image).image,
              ),
            ),
            const SizedBox(height: 30),
            Text('Name', style: nameNumber),
          ],
        ),
      )
    );
  }
}
