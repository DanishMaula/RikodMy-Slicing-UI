import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/data_customer.dart';
import 'package:rikodmy/widget/others/search_bar.dart';

import '../../../utils/utils.dart';
import '../../../widget/list_item/customer_item.dart';

class SearchCustomer extends StatefulWidget {
  const SearchCustomer({super.key});

  @override
  State<SearchCustomer> createState() => _SearchCustomerState();
}

class _SearchCustomerState extends State<SearchCustomer> {
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
        title: const SearchBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: SafeArea(
            child: Column(
              children: [
                SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: ListView.builder(
                   physics: NeverScrollableScrollPhysics(),  
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final AllCustomer allCustomer = allCustomerList[index];
                      return InkWell(
                        onTap: () { },
                        child: CustomerItem(allCustomer: allCustomer),
                      );
                    },
                    itemCount: allCustomerList.length,
                    ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
