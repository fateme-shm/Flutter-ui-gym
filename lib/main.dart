// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:gym_app/exercisePage.dart';
import 'package:gym_app/homePage.dart';
import 'package:gym_app/reportPage.dart';

import 'package:gym_app/startPage.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

/////////////// ********************************** /////////////////////
/////////////// ********************************** /////////////////////
/////////////// ********************************** /////////////////////
/////////////////////// Fateme Shamohammadi ////////////////////////////
/////////////// ********************************** /////////////////////
/////////////// ********************************** /////////////////////
/////////////// ********************************** /////////////////////
///
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gym',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.indigo[50]),
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
        '/mainPage': (context) => MainPage(),
        '/homePage': (context) => HomePage(),
        '/exerPage': (context) => ExercisePage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<Widget> _optionMenu = [
    HomePage(),
    ReportPage(),
    ExercisePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _optionMenu.elementAt(_selectedIndex),
        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.indigo[300],
            onPressed: () {},
            child: Icon(
              LineAwesomeIcons.plus,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomAppBar(
            color: Colors.grey[200],
            shape: CircularNotchedRectangle(),
            notchMargin: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      LineAwesomeIcons.campground,
                      size: 35,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: IconButton(
                      icon: Icon(
                        LineAwesomeIcons.line_chart,
                        size: 35,
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                    ),
                  ),
                  Hero(
                    tag: "excersicePage",
                    child: IconButton(
                      icon: Icon(
                        LineAwesomeIcons.dumbbell,
                        size: 35,
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      LineAwesomeIcons.user,
                      size: 35,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
