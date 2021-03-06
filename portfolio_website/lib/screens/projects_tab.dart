import 'package:flutter/material.dart';
import 'package:portfolio_website/config/projects.dart';
import 'package:portfolio_website/widgets/media_query.dart';
import 'package:portfolio_website/widgets/project_widget.dart';

class ProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQueryClass(
      largeScreen: GridView.count(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        crossAxisCount: 3,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.4),
        children: List.generate(
            projects.length, (index) => ProjectWidget(projects[index], 0)),
      ),
      smallScreen: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) => ProjectWidget(
              projects[index], (index == projects.length - 1 ? 16.0 : 0))),
    );
  }
}
