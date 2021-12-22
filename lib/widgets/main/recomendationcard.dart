import 'package:exm/models/Recommendation.dart';
import 'package:flutter/material.dart';

import '../../cons.dart';

class RecomendationCard extends StatelessWidget {
  const RecomendationCard({required this.recommendation});
  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      width: 400,
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
                radius: 30, backgroundImage: AssetImage(recommendation.image!)),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            recommendation.text!,
            maxLines: 4,
            style: TextStyle(height: 1.4),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
