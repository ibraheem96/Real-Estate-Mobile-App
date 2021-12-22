import 'package:exm/cons.dart';
import 'package:exm/models/Recommendation.dart';
import 'package:exm/models/projectes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'recomendationcard.dart';

class Recomendations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Client Recomendation",
            style: Theme.of(context).textTheme.headline6),
        SizedBox(
          height: kDefaultPadding,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demoRecommendations.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(
                        right: kDefaultPadding,
                      ),
                      child: RecomendationCard(
                        recommendation: demoRecommendations[index],
                      ),
                    )),
          ),
        )
      ]),
    );
  }
}
