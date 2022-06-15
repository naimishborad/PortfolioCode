
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import 'package:url_launcher/url_launcher.dart';


import '../constants.dart';
import '../models/Projects.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines:  2,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Expanded(
            child: Text(
              project.description!,
              style: TextStyle(height: 1.5),
              maxLines: Responsive.isMobileLarge(context) ?3 : 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Spacer(),
          TextButton(onPressed: () {
            launch(project.link.toString());
          }, child: Text('Read More>>',style: TextStyle(color: primaryColor),)),
        ],
      ),
    );
  }
}
