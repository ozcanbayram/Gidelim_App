import 'package:bootcamp91/product/project_colors.dart';
import 'package:bootcamp91/product/project_texts.dart';
import 'package:bootcamp91/view/login_screen.dart';
import 'package:bootcamp91/view/regsiter_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondWelcomeScreen extends StatefulWidget {
  const SecondWelcomeScreen({super.key});

  @override
  State<SecondWelcomeScreen> createState() => _SecondWelcomeScreenState();
}

class _SecondWelcomeScreenState extends State<SecondWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(ProjectTexts().projectName),
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8, left: 32, right: 32),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: SizedBox(
                    width: 300,
                    height: 150,
                    child: Image.asset("assets/images/ic_login.png")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  ProjectTexts().toGidelim,
                  style: GoogleFonts.kleeOne(
                      color: ProjectColors.default_color,
                      fontSize: 50,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Text(
                ProjectTexts().welcome,
                style: GoogleFonts.kleeOne(
                  color: ProjectColors.default_color,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              // Text(
              //   textAlign: TextAlign.center,
              //   ProjectTexts().welcomeText,
              //   style: Theme.of(context).textTheme.bodyLarge,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const RegisterScreen(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          var begin = const Offset(1.0, 0.0);
                          var end = Offset.zero;
                          var curve = Curves.ease;

                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));

                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        },
                      ),
                    ); //NAVIGATION FINISH HERE
                  },
                  child: Text(ProjectTexts().registerButton),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const LoginScreen(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          var begin = const Offset(1.0, 0.0);
                          var end = Offset.zero;
                          var curve = Curves.ease;

                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));

                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        },
                      ),
                    ); //NAVIGATION FINISH HERE
                  },
                  child: Text(ProjectTexts().loginButton),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
