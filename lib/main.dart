import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_tutorial/about.dart';
import 'package:flutter_tutorial/settings.dart';
import 'package:flutter_tutorial/add.dart';
import 'package:flutter_tutorial/data.dart';
import 'package:flutter_tutorial/weather.dart';
import 'day_weather.dart';
import 'main_page.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome(),
    theme: ThemeData(
        canvasColor: Color(0xFFE2EBFF),
    ),);
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyAppState();
}

class _MyAppState extends State<MyHome> {
  bool visibleButton = true;
  bool visibleState = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
            child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Weather App',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          width: 24,
                          height: 24,
                          // decoration: const BoxDecoration(
                          //     image: DecorationImage(
                          //         image: AssetImage("assets/images/settings.png"), fit: BoxFit.fill)),
                          child: const Icon(Icons.settings)),
                      TextButton(
                        child: const Text("Настройки",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Settings()),
                          );
                        },
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 20),
                            width: 24,
                            height: 24,
                            // decoration: const BoxDecoration(
                            //     image: DecorationImage(
                            //         image: AssetImage("assets/images/settings.png"), fit: BoxFit.fill)),
                            child: const Icon(Icons.favorite_border_sharp)),
                        TextButton(
                          child: const Text("Избраное",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Settings()),
                            // );
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 20),
                            width: 24,
                            height: 24,
                            // decoration: const BoxDecoration(
                            //     image: DecorationImage(
                            //         image: AssetImage("assets/images/settings.png"), fit: BoxFit.fill)),
                            child: const Icon(Icons.person)),
                        TextButton(
                          child: const Text("О приложении",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => About()));
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Settings()),
                            // );
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        )),
        /*appBar: AppBar(
          title: const Text("Flutter tutorial"),
          backgroundColor: Colors.grey[900],
          centerTitle: true,
        ),*/
        body: FutureBuilder(
          builder: (context, snapshot) {
              return Builder(builder: (context) {
                return mainPage();
              });
          },

        // bottomNavigationBar: BottomNavigationBar(),
      ),
    ),
    );
  }
}


