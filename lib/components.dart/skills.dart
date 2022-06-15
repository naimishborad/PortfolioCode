
import 'package:flutter/material.dart';



import '../constants.dart';
import 'animatedprogressindigator.dart';

class skills extends StatelessWidget {
  const skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: AnimatedCircularProgress(
                    percentage: 0.80, lable: 'Flutter')),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                child: AnimatedCircularProgress(
                    percentage: 0.7, lable: 'Firebase')),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                child: AnimatedCircularProgress(
                    percentage: 0.60, lable: 'Android')),
          ],
        )
      ],
    );
  }
}
