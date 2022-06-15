
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/responsive.dart';

import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';


class Home_banner extends StatelessWidget {
  const Home_banner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:Responsive.isMobile(context) ?2.5: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/mainbg.jpg',fit: BoxFit.cover,),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome To My PortFolio',style: Responsive.isDesktop(context)?
                     Theme.of(context).textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ) : Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
                ),
                if(Responsive.isMobileLarge(context))
                SizedBox(height: defaultPadding/2,),
                MyanimatedText(),
                SizedBox(height: defaultPadding,),

               if(!Responsive.isMobileLarge(context)) ElevatedButton(
                  onPressed: (){}, 
                  child: Text("EXPLORE NOW",style: TextStyle(color: Colors.black ),),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding*2,
                      vertical:  defaultPadding
                    ),
                    backgroundColor: primaryColor
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
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
                        
                      ],
                    ),
                  )
              ],
            ),
          )
      ]),
    );
  }
}


class MyanimatedText extends StatelessWidget {
  const MyanimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
                      style: TextStyle(
                        color: primaryColor,
                        fontFamily: GoogleFonts.poppins.toString(),
                        fontSize: 20
                      ),
                      child: Row(
                        children: [
                          
                          Text('I am '),
                          
                          AnimatedTextKit(
                            animatedTexts:[
                              TyperAnimatedText('a Flutter Developer'),
                              TyperAnimatedText('a Programmer'),
                              TyperAnimatedText('a Learner</>')
                            ] 
                          ),
                        ],
                      ),
                    );
  }
}