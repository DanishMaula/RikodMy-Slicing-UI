import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rikodmy/utils/utils.dart';

class AddDataLedger extends StatefulWidget {
  final String title;
  final String text;

  const AddDataLedger({super.key, required this.title, required this.text});

  @override
  State<AddDataLedger> createState() => _AddDataLedgerState();
}

class _AddDataLedgerState extends State<AddDataLedger> {
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
          //make title dynamic
          title: Text(
            widget.title,
            style: title,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: 
                BoxDecoration(
                  border:
                      Border.all(color: const Color(0xffE0E0E0), width: 1.5),
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
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: Text(widget.text, style: nameNumberValue),
                  )),
              const SizedBox(height: 10),
              Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffE0E0E0), width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: Text('Notes', style: nameNumberValue),
                  )),
              const SizedBox(height: 50),
              MaterialButton(onPressed: (){},
              minWidth: double.infinity,
              height: 50,
              color: const Color(0xff2360AD),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Text('Save', style: addCart,),)
            ],
          ),
        ));
  }
}
