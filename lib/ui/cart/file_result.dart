import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/utils.dart';

class FileResult extends StatefulWidget {
  const FileResult({super.key});

  @override
  State<FileResult> createState() => _FileResultState();
}

class _FileResultState extends State<FileResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Result', style: title),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/pdf.png', width: 170, height: 170),
              const SizedBox(height: 70),
              MaterialButton(
                onPressed: () {},
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: const Color(0xff2360AD),
                minWidth: double.infinity,
                child: Text('OPEN FILE', style: addCart),
              ),
              const SizedBox(height: 10),
              MaterialButton(
                onPressed: () {},
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: const Color(0xff2360AD),
                minWidth: double.infinity,
                child: Text('SEND FILE', style: addCart),
              ),
              const SizedBox(height: 70),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                height: 50,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xff2360AD)),
                    borderRadius: BorderRadius.circular(5)),
                minWidth: double.infinity,
                child: Text('BACK TO HOME', style: cartSelectAll),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
