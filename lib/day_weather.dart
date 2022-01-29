import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ForecastForWeek extends StatefulWidget {
  @override
  State<ForecastForWeek> createState() => _ForecastForWeekState();
}

class _ForecastForWeekState extends State<ForecastForWeek> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(
                    top: 34, bottom: 37, left: 65, right: 65),
                child: const Text("Прогноз на неделю",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w600))),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Neumorphic(
                  style: NeumorphicStyle(
                      color: Color.fromARGB(140, 205, 218, 245),
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 16, top: 16),
                            child: Text("23 сентября",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600))),
                        Container(
                            margin: const EdgeInsets.only(bottom: 44),
                            width: 95.0,
                            height: 86.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/partly_cloudy.png"),
                                    fit: BoxFit.fill))),
                        Container(
                          margin: const EdgeInsets.only(bottom: 24),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 12),
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/thermometer.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text("˚c",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 90, 90, 90)))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 24),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 12),
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/breeze.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text("м/с",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 90, 90, 90)))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 24),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 12),
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/wet.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Text(
                                "87",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text("%",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 90, 90, 90)))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 12),
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/barometer.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Text(
                                "761",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text("мм.рт.ст.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 90, 90, 90)))
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: OutlinedButton(
                style: TextButton.styleFrom(
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Вернуться на главную",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 14)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
