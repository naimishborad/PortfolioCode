import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

import 'components.dart/sidemenu.dart';
import 'home/homescreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naimish Borad',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                  bodyText1: TextStyle(color: bodyTextColor),
                  bodyText2: TextStyle(color: bodyTextColor))),
      home: HomeScreen(),
    );
  }
}


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (Responsive.isDesktop(context)) ? null : AppBar(
        backgroundColor:bgColor,
        leading: Builder(
          builder: (context)=> IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            }, 
            icon: Icon(Icons.menu)
            ),
        ),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxHeight: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))
              Expanded(
                flex: 2,
                  child: SideMenu()
                ),
                SizedBox(width: defaultPadding,),
              Expanded(
                flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}