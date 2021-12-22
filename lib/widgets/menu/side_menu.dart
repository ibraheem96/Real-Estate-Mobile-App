// ignore_for_file: prefer_const_constructors

import 'package:exm/cons.dart';
import 'package:exm/widgets/menu/contact_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'coals.dart';
import 'logo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
            child: Column(children: [
      logo(),
      Expanded(
          child: SingleChildScrollView(
              padding: EdgeInsets.all(kDefaultPadding),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                ContactInfo(),
                Divider(),
                Goals(),
                Divider(),
                SizedBox(height: kDefaultPadding),
                TextButton(
                    onPressed: () {},
                    child: FittedBox(
                        child: Row(children: [
                      SvgPicture.asset('img/icons/download.svg'),
                      SizedBox(width: kDefaultPadding / 2),
                      Text("Dwonload Brochure",
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ))
                    ]))),
                Container(
                    margin: EdgeInsets.only(top: kDefaultPadding * 2),
                    color: kSecondaryColor,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('img/icons/linkedin.svg')),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('img/icons/github.svg')),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('img/icons/twitter.svg')),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('img/icons/dribble.svg')),
                        ]))
              ])))
    ])));
  }
}
