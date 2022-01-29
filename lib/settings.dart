import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SettingsState();
}

class SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFE2EBFF),
          body: Padding(
            padding: const EdgeInsets.only(top: 34),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      NeumorphicButton(
                        onPressed: () {Navigator.pop(context);},
                        child: Icon(Icons.arrow_back_ios, color: Colors.black),
                        style: NeumorphicStyle(color: Colors.transparent, depth: 0),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: const Text("Настройки",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: Text("Единицы измерения",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFFE2EBFF))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Neumorphic(
                                style: NeumorphicStyle(color: Color(0xFFE2EBFF),boxShape:
                                NeumorphicBoxShape.roundRect(BorderRadius.circular(50))),
                                child: Column(children: [
                                  Toggle(
                                    fParam: "˚C",
                                    sParam: "˚F",
                                    title: "Температура",
                                  ),
                                  Container(
                                    // width: double.infinity,
                                    // height: double.infinity,
                                    child: const Image(
                                      image: AssetImage("assets/images/line.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Toggle(
                                    fParam: "м/с",
                                    sParam: "км/ч",
                                    title: "Сила ветра",
                                  ),
                                  Container(
                                    // width: double.infinity,
                                    // height: double.infinity,
                                    child: const Image(
                                      image: AssetImage("assets/images/line.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Toggle(
                                    fParam: "мм.рт.ст.",
                                    sParam: "гПа",
                                    title: "Давление",
                                  )
                                ])),
                          ),
                        ]))
              ],
            ),
          ),
        ));
  }
}

class Toggle extends StatefulWidget {
  final String fParam;
  final String sParam;
  String title;

  Toggle(
      {Key? key,
        required this.fParam,
        required this.sParam,
        required this.title})
      : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  String fParam = '';
  String sParam = '';
  String title = '';
  var selected = 0;

  @override
  void initState() {
    title = widget.title;

    switch (title) {
      case 'Температура':
        selected = Params.temp ? 0 : 1;
        break;
      case 'Сила ветра':
        selected = Params.speed ? 0 : 1;
        break;
      case 'Давление':
        selected = Params.pressure ? 0 : 1;
    }

    fParam = widget.fParam;
    sParam = widget.sParam;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
          LimitedBox(
            maxWidth: 122,
            maxHeight: 25,
            child: NeumorphicToggle(
              onChanged: (value) {
                setState(() {
                  selected = value;
                  switch (title) {
                    case 'Температура':
                      Params.temp = (value == 0) ? true : false;
                      break;
                    case 'Сила ветра':
                      Params.speed = (value == 0) ? true : false;
                      break;
                    case 'Давление':
                      Params.pressure = (value == 0) ? true : false;
                  }
                });
              },
              children: [
                ToggleElement(
                  background: Center(
                    child: Text(
                      fParam,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  foreground: Center(
                    child: Text(
                      fParam,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                ToggleElement(
                  background: Center(
                    child: Text(
                      sParam,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  foreground: Center(
                    child: Text(
                      sParam,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
              selectedIndex: selected,
              thumb: Container(
                color: Color(0xff4B5F88),
              ),
              style: NeumorphicToggleStyle(
                backgroundColor: Colors.transparent,
                depth: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Params {
  static bool temp = false;
  static bool speed = false;
  static bool pressure = false;
}