// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../cons.dart';

class logo extends StatelessWidget {
  const logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage('img/image/logo.png'),
              width: 100.0,
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              "Real Estate",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'Modern home with \n greate interior design',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
