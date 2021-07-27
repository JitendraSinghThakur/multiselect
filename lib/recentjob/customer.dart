import 'package:flutter/material.dart';

class Customer extends StatefulWidget {
  const Customer({Key? key}) : super(key: key);

  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(6),
          color: Color(0xffCCCCCC),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "CUSTOMER",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w300,
                    letterSpacing: .5),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  "EMAIL HISTORY",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
