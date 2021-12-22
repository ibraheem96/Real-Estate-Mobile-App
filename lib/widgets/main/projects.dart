import 'package:exm/cons.dart';
import 'package:exm/models/projectes.dart';
import 'package:exm/responsive.dart';
import 'package:flutter/material.dart';

import 'projectscard.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Our Projects", style: Theme.of(context).textTheme.headline6),
      Responsive(
        desktop: buildGridview(
          itemCount: demoProjects.length,
          crossAxistCount: 3,
          childAspectRatio: 0.75,
          itemBuilder: (BuildContext context, int index) {
            return ProjectCard(
              project: demoProjects[index],
            );
          },
        ),
        tablet: buildGridview(
          itemCount: demoProjects.length,
          crossAxistCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
          childAspectRatio: 0.75,
          itemBuilder: (BuildContext context, int index) {
            return ProjectCard(
              project: demoProjects[index],
            );
          },
        ),
        mobilelarge: buildGridview(
          itemCount: demoProjects.length,
          crossAxistCount: 2,
          childAspectRatio: 0.75,
          itemBuilder: (BuildContext context, int index) {
            return ProjectCard(
              project: demoProjects[index],
            );
          },
        ),
        mobile: buildGridview(
          itemCount: demoProjects.length,
          crossAxistCount: 1,
          childAspectRatio: 0.75,
          itemBuilder: (BuildContext context, int index) {
            return ProjectCard(
              project: demoProjects[index],
            );
          },
        ),
      )
    ]);
  }

  GridView buildGridview({
    required int itemCount,
    required int crossAxistCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      // ignore: prefer_const_constructors
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxistCount,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
