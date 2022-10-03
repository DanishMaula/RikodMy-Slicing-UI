import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/all_product_data.dart';
import 'package:rikodmy/utils/utils.dart';

class ProductDetail extends StatefulWidget {
  final AllProduct allProduct;

  const ProductDetail({super.key, required this.allProduct});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
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
            'Details',
            style: title,
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.allProduct.image,
                fit: BoxFit.cover, width: double.infinity, height: 250),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff2360AD),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 11, bottom: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.allProduct.price,
                      style: priceDetail,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          Icons.add_circle_rounded,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '2',
                          style: quantity,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.remove_circle_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  widget.allProduct.name,
                  style: titleNameDetail,
                ),
                Text(widget.allProduct.stock, style: stockDetail),
                const SizedBox(height: 5),
                Text(widget.allProduct.description, style: descDetail),
              ]),
            ),
          ],
        ),
      ),
      
    );
  }
}
