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
        child: SingleChildScrollView(
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
                            const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10),
                        child: Text(widget.allCustomer.name, style: nameNumberValue),
                      )),
              const SizedBox(height: 15),
              Text('Phone Number', style: nameNumber),
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
                        child: Text(widget.allCustomer.phoneNumber, style: nameNumberValue),
                      )),
              const SizedBox(height: 15),
              Text('Email', style: nameNumber),
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
                        child: Text(widget.allCustomer.email, style: nameNumberValue),
                      )),
              const SizedBox(height: 15),
              Text('Address', style: nameNumber),
              const SizedBox(height: 5),
              Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10),
                        child: Text(widget.allCustomer.address, style: nameNumberValue),
                      )),
            ],
          ),
        ),
      )
    );
  }
}
