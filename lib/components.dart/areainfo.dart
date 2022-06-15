
import 'package:flutter/material.dart';

import '../constants.dart';


class areainfo extends StatelessWidget {
  final String? title,text;
  const areainfo({
    Key? key, this.title, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding /2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title!,style: TextStyle(color: Colors.white),),
        Text(text!)
      ],
                  ),
    );
  }
}
