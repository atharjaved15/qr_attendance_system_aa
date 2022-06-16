import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  TextEditingController text = new TextEditingController();
  late String textData = "abc";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: QrImage(data: textData,
              size: 200),
            ),
            TextFormField(
              controller: text,
              onChanged: (value) {
                if (value.length >= 1) {
                  setState(() {
                    textData = value.toString();
                  });
                } else {
                  setState(() {
                    textData = textData;
                  });
                }
              },
            ),

          ],
        ),
      ),
    );
  }
}
