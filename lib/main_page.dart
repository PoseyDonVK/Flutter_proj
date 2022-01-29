
import "package:flutter/material.dart";
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_tutorial/add.dart';
import 'day_weather.dart';


class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  bool visibleButton = true;
  bool visibleState = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: const Image(
            image: AssetImage("assets/images/Fon.png"),
            fit: BoxFit.fill,
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                const EdgeInsets.only(top: 15, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NeumorphicButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      padding: const EdgeInsets.all(10),
                      style: const NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.circle(),
                        depth: 4,
                        // lightSource: LightSource.,
                        color: Color(0xFF0256FF),
                      ),
                      child: const Icon(Icons.menu),
                    ),
                    Column(
                      children: [
                        Visibility(
                          visible: visibleState,
                          child: const Text(
                            'Санкт-Петербург',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: "Manrope",
                            ),
                          ),
                        ),
                        const Text(
                          "-5 °C",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 68.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "Manrope",
                          ),
                        ),
                        const Text(
                          '23 сент. 2021',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "Manrope",
                          ),
                        ),
                      ],
                    ),
                    NeumorphicButton(
                      padding: EdgeInsets.all(10),
                      style: const NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.circle(),
                        depth: 4,
                        // lightSource: LightSource.topLeft,
                        color: Color(0xFF0256FF),
                      ),
                      child: const Icon(Icons.add),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => Add()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ExpandableBottomSheet(
          enableToggle: true,
          background: Container(),
          persistentContentHeight: 300,
          persistentHeader: Container(
            height: 40,
            decoration: const BoxDecoration(
              borderRadius:
              BorderRadius.vertical(top: Radius.circular(30)),
              color: Color(0xFFE2EBFF),
            ),
            child: Center(
                child: Container(
                  height: 3,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Colors.blue,
                  ),
                )),
          ),
          onIsExtendedCallback: () {
            setState(() {
              visibleButton = false;
              visibleState = true;
            });
          },
          onIsContractedCallback: () {
            setState(() {
              visibleButton = true;
              visibleState = false;
            });
          },
          expandableContent: Container(
            child: Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(top: 15, left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 75,
                        child: Neumorphic(
                          // padding: const EdgeInsets.only(top: 122, left: 65),
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(5)),
                              depth: 2,
                              lightSource: LightSource.topLeft,
                              color: const Color(0xFFE0E9FD)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 12),
                            child: Column(
                              children: [
                                const Text(
                                  '06:00',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/flash.png",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.fitWidth,
                                ),
                                const Text(
                                  '10˚c',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 75,
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(5)),
                              depth: 2,
                              lightSource: LightSource.topLeft,
                              color: const Color(0xFFE0E9FD)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 12),
                            child: Column(
                              children: [
                                const Text(
                                  '12:00',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/Sunny.png",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.fitWidth,
                                ),
                                const Text(
                                  '12˚c',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 75,
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(5)),
                              depth: 2,
                              lightSource: LightSource.topLeft,
                              color: const Color(0xFFE0E9FD)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 12),
                            child: Column(
                              children: [
                                const Text(
                                  '18:00',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/Rainy.png",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.fitWidth,
                                ),
                                const Text(
                                  '13˚c',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 75,
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(5)),
                              depth: 2,
                              lightSource: LightSource.topLeft,
                              color: const Color(0xFFE0E9FD)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 12),
                            child: Column(
                              children: [
                                const Text(
                                  '00:00',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/L_Rainy.png",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.fitWidth,
                                ),
                                const Text(
                                  '11˚c',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 32, left: 20, bottom: 71, right: 20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 21),
                                width: 171,
                                height: 70,
                                child: Neumorphic(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.only(right: 8),
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/thermometer.png"),
                                                  fit: BoxFit.fill))),
                                      Text("ПУК",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      Text("˚c",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,))
                                    ],
                                  ),
                                  style: NeumorphicStyle(
                                      color: Color(0xFFE0E9FD)
                                  ),
                                ),
                              ),
                              Container(
                                width: 171,
                                height: 70,
                                child: Neumorphic(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.only(right: 8),
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/wet.png"),
                                                  fit: BoxFit.fill))),
                                      Text("МЕМ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      Text("%",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600))
                                    ],
                                  ),
                                  style: NeumorphicStyle(
                                      color: Color(0xFFE0E9FD)
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Row(
                              // mainAxisAlignment:
                              // MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 21),
                                  width: 171,
                                  height: 70,
                                  child: Neumorphic(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.only(right: 8),
                                            width: 24,
                                            height: 24,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/breeze.png"),
                                                    fit: BoxFit.fill))),
                                        Text("ЛОЛ",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600)),
                                        const Text("м/с",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600))
                                      ],
                                    ),
                                    style: const NeumorphicStyle(
                                        color: Color(0xFFE0E9FD)
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(),
                                  width: 171,
                                  height: 70,
                                  child: Neumorphic(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(right: 8),
                                          width: 24,
                                          height: 24,
                                          child: const Icon(Icons.av_timer_outlined),),
                                        Text("КЕК",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600)),
                                        const Text("˚мм.рт.ст.",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600))
                                      ],
                                    ),
                                    style: const NeumorphicStyle(
                                        color: Color(0xFFE0E9FD)
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                  visible: visibleState,
                ),
                Visibility(
                  visible: visibleButton,
                  child: Container(
                    margin: EdgeInsets.only(top: 16),
                    child: OutlinedButton(
                      style: TextButton.styleFrom(
                          side: BorderSide(
                              color: Color.fromARGB(255, 3, 140, 254)),
                          backgroundColor:
                          Color.fromARGB(255, 234, 240, 255),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForecastForWeek()),
                        );
                      },
                      child: Text("Прогноз на неделю",
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 140, 254),
                              fontSize: 14)),
                    ),
                  ),
                )
              ],
            ),
            height: 500,
            color: Color(0xFFE2EBFF),
          ),
        ),
      ],
    );
  }

  // bottomNavigationBar: BottomNavigationBar
}
