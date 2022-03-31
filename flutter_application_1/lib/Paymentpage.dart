import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutterkhaltipayment/flutterkhaltipayment.dart';

class PaymentPage extends StatefulWidget {
  static const routeName = '/PaymentPage';
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  TextEditingController _textEditingControllerAmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _textEditingControllerAmount,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Amount'),
              ),
            ),
            SizedBox(height: 40),
            MaterialButton(
              minWidth: double.infinity,
              color: Colors.green,
              height: 60,
              onPressed: () {},
              // defining the shape
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                "Payment with Khalti",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _sendtoKhalti(BuildContext context) {
    FlutterKhaltiPayment _flutterKhalti = FlutterKhaltiPayment(
        merchantKey: "test_public_key_c4008159599e4c388c1420be34a2dcc9",
        productId: "test",
        productName: "Payment for tax",
        amount: 1000,
        urlSchemeIOS: "KhaltiPayFlutterExampleSchema");
  }
}
