import 'package:exm/models/projectes.dart';
import 'package:flutter/material.dart';

import '../../cons.dart';

class ProjectCard extends StatelessWidget {
  ProjectCard({
    required this.project,
  });
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: kDefaultPadding),
          Expanded(
              child: Text(
            project.description!,
            style: TextStyle(height: 1),
          )),
          SizedBox(height: kDefaultPadding),
          TextButton(
              onPressed: () {},
              child: Text(
                "More info >",
                style: TextStyle(color: kPrimaryColor),
              ))
        ],
      ),
    );
  }
}
