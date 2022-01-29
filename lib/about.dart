import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE2EBFF),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 32, bottom: 89),
              child: Row(
                children: [
                  NeumorphicButton(
                    onPressed: () {Navigator.pop(context);},
                    child: Icon(Icons.arrow_back_ios, color: Colors.black),
                    style: NeumorphicStyle(color: Colors.transparent, depth: 0),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: const Text("О разработчике",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
            Center(
              child: Neumorphic(
                style: NeumorphicStyle(
                  depth: -5,
                  color: Color(0xFFDEE9FF),
                  boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                ),
                child: Container(
                  width: 224,
                  height: 52,
                  child: Center(
                    child: Text("Weather app",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding: const EdgeInsets.only(top: 108),
                    child: Neumorphic(
                      padding: const EdgeInsets.only(top: 23),
                      style: NeumorphicStyle(
                        lightSource: LightSource.bottom,
                        depth: 15,
                          color: Color(0xFFE2EBFF),
                          boxShape: NeumorphicBoxShape.roundRect(
                              const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)))),
                      child: Column(
                        // mainAxisSize: MainAxisSize.max,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("by ITMO University",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w800)),
                          Text("Версия 1.0",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF4A4A4A))),
                          Text("от 30 сентября 2021",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF4A4A4A))),
                          Padding(
                            padding: EdgeInsets.only(top: 450),
                            child: Text("2021",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w800)),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}