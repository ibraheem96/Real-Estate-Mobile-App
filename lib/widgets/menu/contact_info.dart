// ignore_for_file: prefer_const_constructors

import 'package:exm/cons.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  ContactInfo({Key? key}) : super(key: key);

  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: "Address", text: "Station street 5"),
        buildContactInfo(title: "Country", text: "Syria"),
        buildContactInfo(title: "Email", text: "bhrooom96@gmail.com"),
        buildContactInfo(title: "Mobile", text: "01552911929"),
        buildContactInfo(title: "Website", text: "my@website.com")
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(color: Colors.white)),
          Text(
            text,
          )
        ],
      ),
    );
  }
}
