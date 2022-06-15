import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



import '../components.dart/Projectcard.dart';
import '../components.dart/homebanner.dart';
import '../components.dart/my_projects.dart';
import '../main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      Home_banner(),
      MyProjects(),
      
    ]);
  }
}
