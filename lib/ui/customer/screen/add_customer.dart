import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/utils.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
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
          'Add Customer',
          style: title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE0E0E0), width: 1.5),
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
                        onPressed: () {},
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
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, bottom: 10, right: 10),
                  child: Text('Customer Email', style: nameNumberValue),
                )),
            const SizedBox(height: 10),
            Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, bottom: 10, right: 10),
                  child: Text('Customer Phone', style: nameNumberValue),
                )),
            const SizedBox(height: 10),
            Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, bottom: 10, right: 10),
                  child: Text('Customer Email', style: nameNumberValue),
                )),
            const SizedBox(height: 10),
            Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, bottom: 10, right: 10),
                  child: Text('Customer Address', style: nameNumberValue),
                )),
                const SizedBox(height: 50),
                MaterialButton(onPressed: (){},
                minWidth: double.infinity,
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                color: const Color(0xff2360AD),
                child: Text('Save', style: addCart ),)
          ],
        ),
      ),
    );
  }
}
