
import 'package:flutter/material.dart';
import 'package:portfolio/components.dart/animatedprogressindigator.dart';



import '../constants.dart';

class Programming extends StatelessWidget {
  const Programming({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Programming',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndigator(
          lable: 'Dart',
          percentage: 0.8,
        ),
        AnimatedLinearProgressIndigator(
          lable: 'C++',
          percentage: 0.7 ,
        ),
        AnimatedLinearProgressIndigator(
          lable: 'Python',
          percentage: 0.7,
        ),
        AnimatedLinearProgressIndigator(
          lable: 'java',
          percentage: 0.6,
        ),
      ],
    );
  }
}
