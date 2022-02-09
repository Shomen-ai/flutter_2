import 'package:flutter/material.dart';

class AsyncTrigger_T extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AsyncTrigger_T_State();
  }
}

String switching(bool a){
  if (a == true){
    return '1';
  }
  if (a == false){
    return '0';
  }
  return "";
}

class AsyncTrigger_T_State extends State<AsyncTrigger_T> {
  bool buttonPressed_0 = true;
  bool buttonPressed_1 = false;

  bool answer = false;
  bool answer_1 = true;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        alignment: Alignment.center,
        height: 700,
        width: 1000,
        //decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 95,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 0, right: 1),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (buttonPressed_0 == false){
                                buttonPressed_1 = false;
                              }
                              if (buttonPressed_0 == true){
                                setState(() {
                                  answer = !answer;
                                  answer_1 = !answer_1;
                                });
                                buttonPressed_1 = true;
                              }
                              buttonPressed_0 = !buttonPressed_0;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(24),
                            primary:
                            buttonPressed_0 ? Colors.red : Colors.white,
                            animationDuration: Duration(milliseconds: 100),
                          ),
                          child: new Text('0',
                              style: TextStyle(
                                  color: buttonPressed_0
                                      ? Colors.white
                                      : Colors.red,
                                  fontSize: 14)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                          left: 1,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (buttonPressed_1 == false){
                                buttonPressed_0 = false;
                              }
                              if (buttonPressed_1 == true){
                                buttonPressed_0 = true;
                              }
                              buttonPressed_1 = !buttonPressed_1;
                              if (buttonPressed_1 == true) {
                                setState(() {
                                  answer = !answer;
                                  answer_1 = !answer_1;
                                });
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.green, width: 2),
                            padding: EdgeInsets.all(24),
                            primary:
                            buttonPressed_1 ? Colors.green : Colors.white,
                          ),
                          child: Text('1',
                              style: TextStyle(
                                  color: buttonPressed_1
                                      ? Colors.white
                                      : Colors.green,
                                  fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Container(
                    alignment: Alignment.center,
                    height: 550,
                    width: 700,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.blueAccent)
                    // ),
                    child: Image.asset(
                      "assets/Async-T.jpeg",
                      //width: 541.0,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 25,
                    ),
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 41,
                      left: 26,
                    ),
                    child: Container(
                      width: 15,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 187,
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 360,
                      left: 187,
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 487,
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 360,
                      left: 487.5,
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 360,
                    ),
                    child: Text(
                      "R*",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 450,
                      left: 360,
                    ),
                    child: Text(
                      "S*",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 84,
                      left: 650,
                    ),
                    child: Text(
                      "Q",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 405,
                      left: 650,
                    ),
                    child: Text(
                      "Q",
                      style: TextStyle(color: Colors.black, fontSize: 26, decoration: TextDecoration.overline),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 165,
                    right: 50,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                            (buttonPressed_0 == false &&
                                buttonPressed_1 == false )
                                ? '0'
                                : switching(answer),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ))),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.black),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 270,
                    right: 50,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                            (buttonPressed_0 == false &&
                                buttonPressed_1 == false )
                                ? '1'
                                : switching(answer_1),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ))),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.black),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}