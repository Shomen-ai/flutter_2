import 'package:flutter/material.dart';
import 'FirstView.dart';
import 'SecondView.dart';
import 'ThirdView.dart';
import 'student_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "1111",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            // MARK: Menu
            Container(
              width: 300,
              height: double.infinity,
              color: const Color.fromRGBO(147, 28, 31, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" "),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton.extended(
                                onPressed: () {
                                  setState(() {
                                    _index = 0;
                                  });
                                },
                                label: const Text('Лабораторная №1',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                backgroundColor: _index == 0
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.5)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton.extended(
                                onPressed: () {
                                  setState(() {
                                    _index = 1;
                                  });
                                },
                                label: const Text('Лабораторная №2',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                backgroundColor: _index == 1
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.5)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton.extended(
                                onPressed: () {
                                  setState(() {
                                    _index = 2;
                                  });
                                },
                                label: const Text('Лабораторная №3',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                backgroundColor: _index == 2
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.5)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Tooltip(
                          message: "Работу выполнили:\nстуденты гр.8191-21\n\n Шайманов Дмитрий\n Сулейманов Булат\n Давлетгареев Айдар",
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromRGBO(147, 28, 31, 1),
                          ),
                          margin: EdgeInsets.only(
                            left: 60,
                          ),
                          verticalOffset: -20,
                          child: Container(
                              height: 50,
                              width: 50,
                              child: Icon(Student.student,
                                  color: Color.fromRGBO(147, 28, 31, 1)),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width: 1, color: Colors.black),
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // MARK: Main window
            Expanded(
              child: IndexedStack(
                index: _index,
                children: [
                  FirstView(),
                  SecondView(),
                  ThirdView(),
                ],
              ),
            ),
          ],
        ),
      ),
      //debugShowCheckedModeBanner: false,
    );
  }
}
