
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/ui/customer/detail/customer_detail.dart';
import 'package:rikodmy/utils/utils.dart';
import 'package:rikodmy/widget/search_bar.dart';

import '../../../models/data_customer.dart';
import '../../../widget/list_item/customer_item.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Customer',
          style: title,
        ),
        // put search bar under title
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(50), child: SearchCustomer()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff2360AD),
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final AllCustomer allCustomer = allCustomerList[index];
                    return InkWell(
                      onTap: () {
                        final AllCustomer allCustomer = allCustomerList[index];
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) {
                              return CustomerDetail(allCustomer: allCustomer);
                            }));
                      },
                      child: CustomerItem(allCustomer: allCustomer),
                    );
                  },
                  itemCount: allCustomerList.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
