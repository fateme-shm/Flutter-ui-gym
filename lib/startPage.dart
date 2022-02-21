// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PUSH YOURSELF',
                      style: GoogleFonts.mcLaren(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Choose Level that\nSuites You',
                      style: GoogleFonts.mcLaren(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Hero(
                          tag: "mainPage",
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.red)),
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/mainPage'),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: SizedBox(
                                  width: 100,
                                  child: Row(
                                    children: [
                                      Icon(
                                        LineAwesomeIcons.tired_face,
                                        size: 35,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        'High',
                                        style: GoogleFonts.mcLaren(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.orange)),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/mainPage'),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: SizedBox(
                                width: 100,
                                child: Row(
                                  children: [
                                    Icon(
                                      LineAwesomeIcons.smiling_face,
                                      size: 35,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      'Mid',
                                      style: GoogleFonts.mcLaren(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/mainPage'),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: SizedBox(
                                width: 100,
                                child: Row(
                                  children: [
                                    Icon(
                                      LineAwesomeIcons.grinning_face,
                                      size: 35,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      'Low',
                                      style: GoogleFonts.mcLaren(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/images/bg.png',
                    height: 550,
                    width: 200,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
