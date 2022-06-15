
import 'package:flutter/material.dart';

class myInfo extends StatelessWidget {
  const myInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(flex: 2,),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/85880975?v=4'),
              ),
              SizedBox(height: 2,),
              Text('Naimish Borad',style: Theme.of(context).textTheme.subtitle2,),
              Text('Flutter Developer',style: TextStyle(fontWeight: FontWeight.w200,height: 1.5),textAlign: TextAlign.center,),
              Spacer(flex: 2,)
            ],
          ),
        ),
      );
  }
}
