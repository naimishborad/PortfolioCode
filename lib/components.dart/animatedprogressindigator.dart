
import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCircularProgress extends StatelessWidget {
  final double percentage;
  final String lable;
  const AnimatedCircularProgress({
    Key? key, required this.percentage, required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0,end: percentage), 
            duration: defaultDuration, 
            builder: (context,double value,child)=>
              Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  Center(
                    child: Text(
                      (value * 100).toInt().toString()+ '%',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  )
                ],
              )
            ),
        ),
        SizedBox(height: defaultPadding / 2,),
        Text(lable,maxLines: 1,overflow: TextOverflow.ellipsis,)
      ],
    );
  }
}



class AnimatedLinearProgressIndigator extends StatelessWidget {
  final double percentage;
  final String lable;
  const AnimatedLinearProgressIndigator({
    Key? key,
    required this.percentage,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        duration: defaultDuration,
        tween: Tween<double>(begin: 0, end: percentage),
        builder: (BuildContext context, double value, Widget? child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    lable,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text((value * 100).toInt().toString() + '%')
                ],
              ),
              SizedBox(
                height: defaultPadding / 2,
              ),
              LinearProgressIndicator(
                  value: value, color: primaryColor, backgroundColor: darkColor),
            ],
          );
        },
      ),
    );
  }
}
