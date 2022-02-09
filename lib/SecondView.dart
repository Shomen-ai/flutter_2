import 'package:flutter/material.dart';
import 'SecondView/AsyncTrigger_RS.dart';
import 'SecondView/TactTrigger.dart';
import 'SecondView/AsyncTrigger_T.dart';

class SecondView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecondViewState();
  }
}

class SecondViewState extends State<SecondView> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 36.0),
              child: Text('Лабораторная работа №2\nТриггеры',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IndexedStack(
                    index: _index,
                    children: [
                      AsyncTrigger_RS(),
                      TactTrigger(),
                      AsyncTrigger_T(),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: Container(
                    width: 560,
                    height: 75,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(147, 28, 31, 1),
                          Colors.red
                        ]),
                        borderRadius:
                            BorderRadius.all(Radius.circular(75 / 2))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FloatingActionButton.extended(
                            onPressed: () {
                          setState(() {
                            _index = 0;
                          });
                            },
                            label: Text('Асинхронный\nRS-триггер',
                            style: TextStyle(
                                color: Colors.black, fontSize: 15),
                            textAlign: TextAlign.center,),
                            backgroundColor: _index == 0 ? Colors.white : Colors.white.withOpacity(0.5),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FloatingActionButton.extended(
                            onPressed: () {
                          setState(() {
                            _index = 1;
                          });
                            },
                            label: Text('Тактируемый\nD-триггер',
                            style: TextStyle(
                                color: Colors.black, fontSize: 15),
                          textAlign: TextAlign.center,),
                            backgroundColor: _index == 1 ? Colors.white : Colors.white.withOpacity(0.5),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FloatingActionButton.extended(
                            onPressed: () {
                          setState(() {
                            _index = 2;
                          });
                            },
                            label: Text('Асинхронный\nT-триггер',
                            style: TextStyle(
                                color: Colors.black, fontSize: 15),
                          textAlign: TextAlign.center,),
                            backgroundColor: _index == 2 ? Colors.white : Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
