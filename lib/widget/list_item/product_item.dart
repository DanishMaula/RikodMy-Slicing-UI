import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/models/all_product_data.dart';
import 'package:rikodmy/utils/utils.dart';

class ProductItem extends StatefulWidget {
  final AllProduct allProduct;

  const ProductItem({super.key, required this.allProduct});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10, left: 10, right: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(color: const Color(0xffE0E0E0), 
                 width: 2.0)
                 ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Image.asset(
                    widget.allProduct.image,
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
                        Text(widget.allProduct.description, style: itemDesc,
                        maxLines: 2, overflow: TextOverflow.ellipsis,),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.allProduct.stock,
                              style: itemStock,
                            ),
                            Text(
                              widget.allProduct.price,
                              style: itemPrice,
                            )
                          ],
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
    );
  }
}
