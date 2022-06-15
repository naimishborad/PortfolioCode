import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Projects.dart';


class ReadMore extends StatelessWidget {
  final Project project;
  const ReadMore({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          color: secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                
                project.title!,
                style: TextStyle(
                  
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  fontFamily: GoogleFonts.poppins().toString()
                ),
                maxLines: 2,
              ),
              SizedBox(height: 100,),
              Text(
                project.description!,
                style: TextStyle(height: 1.5),
              ),
              SizedBox(height: 100,),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    '<<Back',
                    style: TextStyle(color: primaryColor),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
