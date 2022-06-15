
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';


class knowledge extends StatelessWidget {
  const knowledge({
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
      child: Text('knowledge',style: Theme.of(context).textTheme.subtitle1),
    ),
    knowledgeText(text: 'Flutter,Dart',),
    knowledgeText(text: 'Sql,Hive'),
    knowledgeText(text: 'Communication')
      ],
    );
  }
}

class knowledgeText extends StatelessWidget {
  final String text;
  const knowledgeText({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(width: defaultPadding/2,),
          Text(text)
        ],
      ),
    );
  }
}
