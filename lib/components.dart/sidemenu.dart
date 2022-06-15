import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components.dart/areainfo.dart';
import 'package:portfolio/components.dart/my_info.dart';
import 'package:portfolio/components.dart/programming.dart';
import 'package:portfolio/components.dart/skills.dart';

import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import 'knowledgeText.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          myInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  areainfo(
                    title: "Residence",
                    text: 'india',
                  ),
                  areainfo(
                    title: 'City',
                    text: 'Surat',
                  ),
                  areainfo(
                    title: 'Age',
                    text: '20',
                  ),
                  skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Programming(),
                  knowledge(),
                  Divider(),
                  SizedBox(height: defaultPadding/2,),
                  TextButton(onPressed: ()async{
                     final url = "https://drive.google.com/file/d/1tc6kQbNWP90BP4PF9uVAnHOR6gWGwPbZ/view?usp=sharing";
                            // ignore: deprecated_member_use
                            if(await canLaunch(url)){
                              // ignore: deprecated_member_use
                              await launch(url);
                            }
                    
                  }, 
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text('DOWNLOAD CV',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color
                            ),
                          ),
                          SizedBox(width: defaultPadding/2,),
                          SvgPicture.asset('assets/icons/download.svg')
                        ],
                      ),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(), 
                        IconButton(
                          onPressed:()async{
                            final url = "https://www.linkedin.com/in/naimish-borad-55b757220/";
                            // ignore: deprecated_member_use
                            if(await canLaunch(url)){
                              // ignore: deprecated_member_use
                              await launch(url);
                            }
                          }, 
                          icon: SvgPicture.asset('assets/icons/linkedin.svg')
                        ),
                        IconButton(
                          onPressed:()async{
                            final url = "https://github.com/naimishborad";
                            // ignore: deprecated_member_use
                            if(await canLaunch(url)){
                              // ignore: deprecated_member_use
                              await launch(url);
                            }
                          }, 
                          icon: SvgPicture.asset('assets/icons/github.svg')
                        ),
                        IconButton(
                          onPressed:()async{
                            final url = "https://twitter.com/naimishborad";
                            // ignore: deprecated_member_use
                            if(await canLaunch(url)){
                              // ignore: deprecated_member_use
                              await launch(url);
                            }
                          }, 
                          icon: SvgPicture.asset('assets/icons/twitter.svg')
                        ),
                        Spacer()
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
