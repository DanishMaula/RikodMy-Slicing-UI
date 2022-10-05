import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/data_customer.dart';
import 'package:rikodmy/utils/utils.dart';

class CustomerItem extends StatefulWidget {
final AllCustomer allCustomer;

  const CustomerItem({super.key, required this.allCustomer});

  @override
  State<CustomerItem> createState() => _CustomerItemState();
}

class _CustomerItemState extends State<CustomerItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: Image.network(widget.allCustomer.image).image,
            radius: 45,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.allCustomer.name,
                style: customerName,
              ),
              Text(
                widget.allCustomer.phoneNumber,
                style: customerPhone
              ),
            ],
          ),
        ],
      ),
    );
  }
}