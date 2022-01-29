import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Add extends StatelessWidget {
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
                    child: const Text("Избранные",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}