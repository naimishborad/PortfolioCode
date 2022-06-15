
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';



import '../constants.dart';
import '../models/Projects.dart';
import 'Projectcard.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: defaultPadding,),
        Responsive(
          mobile: projectsGridview(childAspectRatio: 1.7,crossAxisCount: 1,), 
          mobileLarge: projectsGridview(crossAxisCount: 2,),
          tablet: projectsGridview(childAspectRatio: 1.1,),
          desktop: projectsGridview()
          )
      ],
    );
  }
}

class projectsGridview extends StatelessWidget {
  final int crossAxisCount ;
  final double childAspectRatio;
  const projectsGridview({
    Key? key,
    this.crossAxisCount = 3, 
    this.childAspectRatio=1.3
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      childAspectRatio: childAspectRatio,
      crossAxisSpacing: defaultPadding,
      mainAxisSpacing: defaultPadding),
      itemCount: demo_projects.length,
      itemBuilder: (BuildContext context, int index) {
    return ProjectCard(
      project: demo_projects[index],
    );
      },
    );
  }
}
