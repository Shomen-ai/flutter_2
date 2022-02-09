import 'package:flutter/material.dart';

class TactTrigger extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TactTriggerState();
  }
}


class TactTriggerState extends State<TactTrigger> {
  bool buttonPressed_0 = true;
  bool buttonPressed_1 = false;

  bool buttonPressed_00 = true;
  bool buttonPressed_11 = false;

  String answer = "0";
  String answer_1 = "1";
  String last_state_answer = '0';
  String last_state_answer_1 = '1';
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
                              if (buttonPressed_0 == false) {
                                buttonPressed_1 = false;
                              }
                              if (buttonPressed_0 == true) {
                                buttonPressed_1 = true;
                              }
                              buttonPressed_0 = !buttonPressed_0;

                              if ( buttonPressed_1 == true) {
                                setState(() {
                                  answer = "1";
                                  answer_1 = "0";
                                });
                              }

                              if ( buttonPressed_0 == true) {
                                setState(() {
                                  answer = "0";
                                  answer_1 = "1";
                                });
                              }
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
                              if (buttonPressed_1 == false) {
                                buttonPressed_0 = false;
                              }
                              if (buttonPressed_1 == true) {
                                buttonPressed_0 = true;
                              }
                              buttonPressed_1 = !buttonPressed_1;

                              if (buttonPressed_1 == true) {
                                setState(() {
                                  answer = "1";
                                  answer_1 = "0";
                                });
                              }

                              if ( buttonPressed_0 == true) {
                                setState(() {
                                  answer = "0";
                                  answer_1 = "1";
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
                Padding(
                  padding: EdgeInsets.only(
                    top: 330,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 0, right: 1),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (buttonPressed_00 == false) {
                                buttonPressed_11 = false;
                              }
                              if (buttonPressed_00 == true) {
                                buttonPressed_11 = true;
                              }
                              buttonPressed_00 = !buttonPressed_00;
                              if (buttonPressed_00 == true){
                                setState(() {
                                  last_state_answer = answer;
                                  last_state_answer_1 = answer_1;
                                });
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(24),
                            primary:
                                buttonPressed_00 ? Colors.red : Colors.white,
                            animationDuration: Duration(milliseconds: 100),
                          ),
                          child: new Text('0',
                              style: TextStyle(
                                  color: buttonPressed_00
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
                              if (buttonPressed_11 == false) {
                                buttonPressed_00 = false;
                              }
                              if (buttonPressed_11 == true) {
                                buttonPressed_00 = true;
                              }
                              buttonPressed_11 = !buttonPressed_11;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.green, width: 2),
                            padding: EdgeInsets.all(24),
                            primary:
                                buttonPressed_11 ? Colors.green : Colors.white,
                          ),
                          child: Text('1',
                              style: TextStyle(
                                  color: buttonPressed_11
                                      ? Colors.white
                                      : Colors.green,
                                  fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                )
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
                      "assets/Tact-trigger.jpeg",
                      //width: 541.0,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 30,
                    ),
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 450,
                      left: 30,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 145,
                      left: 190.5,
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
                      left: 190.5,
                    ),
                    child: Text(
                      "&",
                      style: TextStyle(color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 460,
                      left: 190.5,
                    ),
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 360,
                      left: 190.5,
                    ),
                    child: Text(
                      "&",
                      style: TextStyle(color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 145,
                      left: 487.5,
                    ),
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 487.5,
                    ),
                    child: Text(
                      "&",
                      style: TextStyle(color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 460,
                      left: 487.5,
                    ),
                    child: Text(
                      "4",
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
                      "&",
                      style: TextStyle(color: Colors.black, fontSize: 34),
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
                        child: Text( buttonPressed_11 == true ? answer : last_state_answer,
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
                        child: Text( buttonPressed_11 == true ? answer_1 : last_state_answer_1,
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
