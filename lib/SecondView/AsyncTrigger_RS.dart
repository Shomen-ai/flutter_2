import 'package:flutter/material.dart';

class AsyncTrigger_RS extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AsyncTrigger_RS_State();
  }
}
String logic_RS_Q(bool a,bool b, bool c, bool d) {
  bool buf_a = false;
  bool buf_b = false;

  if (b == true) {
    buf_a = true;
  }
  if (d == true) {
    buf_b = true;
  }

  if (buf_a == false && buf_b == false) {
    return "0";
  }
  if (buf_a == false && buf_b == true) {
    return "1";
  }
  if (buf_a == true && buf_b == false) {
    return "0";
  }
  if (buf_a == true && buf_b == true) {
    return "-";
  }
  return "";
}

String logic_RS_not_Q(bool a,bool b, bool c, bool d) {
  bool buf_a = false;
  bool buf_b = false;

  if (b == true) {
    buf_a = true;
  }
  if (d == true) {
    buf_b = true;
  }

  if (buf_a == false && buf_b == false) {
    return "1";
  }
  if (buf_a == false && buf_b == true) {
    return "0";
  }
  if (buf_a == true && buf_b == false) {
    return "1";
  }
  if (buf_a == true && buf_b == true) {
    return "-";
  }
  return "";
}

class AsyncTrigger_RS_State extends State<AsyncTrigger_RS> {
  bool buttonPressed_0 = true;
  bool buttonPressed_1 = false;

  bool buttonPressed_00 = true;
  bool buttonPressed_11 = false;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        alignment: Alignment.center,
        height: 700,
        width: 1000,
        // decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
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
                    height: 600,
                    width: 425,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.blueAccent)
                    // ),
                    child: Image.asset(
                      "assets/Async_RS.jpeg",
                      //width: 541.0,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 60,
                      left: 30,
                    ),
                    child: Text("R",
                      style: TextStyle(
                          color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 475,
                      left: 30,
                    ),
                    child: Text("S",
                      style: TextStyle(
                          color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 115,
                      left: 205,
                    ),
                    child: Text("1",
                      style: TextStyle(
                          color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 440,
                      left: 205,
                    ),
                    child: Text("1",
                      style: TextStyle(
                          color: Colors.black, fontSize: 34),
                      textAlign: TextAlign.center,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 105,
                      left: 355,
                    ),
                    child: Text("Q",
                      style: TextStyle(
                          color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 430,
                      left: 355,
                    ),
                    child: Text("Q",
                      style: TextStyle(
                          color: Colors.black, fontSize: 26, decoration: TextDecoration.overline),
                      textAlign: TextAlign.center,),
                  ),
                ]),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 160,
                    right: 70,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                            ((buttonPressed_0 == false &&
                                        buttonPressed_1 == false &&
                                        buttonPressed_00 == false &&
                                        buttonPressed_11 == false) ||
                                    (buttonPressed_00 == false &&
                                        buttonPressed_11 == false) ||
                                    (buttonPressed_0 == false &&
                                        buttonPressed_1 == false))
                                ? ""
                                : logic_RS_Q(buttonPressed_0, buttonPressed_1, buttonPressed_00, buttonPressed_11),
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
                    right: 70,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                            ((buttonPressed_0 == false &&
                                        buttonPressed_1 == false &&
                                        buttonPressed_00 == false &&
                                        buttonPressed_11 == false) ||
                                    (buttonPressed_00 == false &&
                                        buttonPressed_11 == false) ||
                                    (buttonPressed_0 == false &&
                                        buttonPressed_1 == false))
                                ? ""
                                : logic_RS_not_Q(buttonPressed_0, buttonPressed_1, buttonPressed_00, buttonPressed_11),
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
