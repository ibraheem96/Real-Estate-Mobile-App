import 'package:exm/cons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Goals",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buidGoals(text: "Planning stage"),
        buidGoals(text: "Developent"),
        buidGoals(text: "Execution phase"),
        buidGoals(text: "New way to living"),
      ],
    );
  }

  Padding buidGoals({required text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('img/icons/check.svg'),
          SizedBox(width: kDefaultPadding / 2),
          Text(text)
        ],
      ),
    );
  }
}
