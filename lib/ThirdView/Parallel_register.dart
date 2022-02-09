import 'package:flutter/material.dart';

class ParallelRegister extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ParallelRegisterState();
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

class ParallelRegisterState extends State<ParallelRegister> {
  bool buttonPressed_0 = false;
  bool buttonPressed_1 = false;

  bool buttonPressed_00 = false;
  bool buttonPressed_11 = false;

  bool buttonPressed_000 = false;
  bool buttonPressed_111 = false;

  bool buttonPressed_0000 = false;
  bool buttonPressed_1111 = false;

  bool buttonPressed_00000 = true;
  bool buttonPressed_11111 = false;

  String answer_0 = '0';
  String answer_1 = '1';
  String last_state_answer_0 = '0';
  String last_state_answer_1 = '1';

  String answer_00 = '0';
  String answer_11 = '1';
  String last_state_answer_00 = '0';
  String last_state_answer_11 = '1';

  String answer_000 = '0';
  String answer_111 = '1';
  String last_state_answer_000 = '0';
  String last_state_answer_111 = '1';

  String answer_0000 = '0';
  String answer_1111 = '1';
  String last_state_answer_0000 = '0';
  String last_state_answer_1111 = '1';
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
                    top: 15,
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
                                buttonPressed_1 = true;
                              }
                              buttonPressed_0 = !buttonPressed_0;

                              if ( buttonPressed_1 == true) {
                                setState(() {
                                  answer_0 = "1";
                                  answer_1 = "0";
                                });
                              }

                              if ( buttonPressed_0 == true) {
                                setState(() {
                                  answer_0 = "0";
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
                              if (buttonPressed_1 == false){
                                buttonPressed_0 = false;
                              }
                              if (buttonPressed_1 == true){
                                buttonPressed_0 = true;
                              }
                              buttonPressed_1 = !buttonPressed_1;

                              if ( buttonPressed_1 == true) {
                                setState(() {
                                  answer_0 = "1";
                                  answer_1 = "0";
                                });
                              }

                              if ( buttonPressed_0 == true) {
                                setState(() {
                                  answer_0 = "0";
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
                  padding: const EdgeInsets.only(
                    top: 80,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 0, right: 1),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (buttonPressed_00 == false){
                                buttonPressed_11 = false;
                              }
                              if (buttonPressed_00 == true){
                                buttonPressed_11 = true;
                              }
                              buttonPressed_00 = !buttonPressed_00;

                              if ( buttonPressed_11 == true) {
                                setState(() {
                                  answer_00 = "1";
                                  answer_11 = "0";
                                });
                              }

                              if ( buttonPressed_00 == true) {
                                setState(() {
                                  answer_00 = "0";
                                  answer_11 = "1";
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
                              if (buttonPressed_11 == false){
                                buttonPressed_00 = false;
                              }
                              if (buttonPressed_11 == true){
                                buttonPressed_00 = true;
                              }
                              buttonPressed_11 = !buttonPressed_11;

                              if ( buttonPressed_11 == true) {
                                setState(() {
                                  answer_00 = "1";
                                  answer_11 = "0";
                                });
                              }

                              if ( buttonPressed_00 == true) {
                                setState(() {
                                  answer_00 = "0";
                                  answer_11 = "1";
                                });
                              }
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
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 80,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 0, right: 1),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (buttonPressed_000 == false){
                                buttonPressed_111 = false;
                              }
                              if (buttonPressed_000 == true){
                                buttonPressed_111 = true;
                              }
                              buttonPressed_000 = !buttonPressed_000;

                              if ( buttonPressed_111 == true) {
                                setState(() {
                                  answer_000 = "1";
                                  answer_111 = "0";
                                });
                              }

                              if ( buttonPressed_000 == true) {
                                setState(() {
                                  answer_000 = "0";
                                  answer_111 = "1";
                                });
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(24),
                            primary:
                            buttonPressed_000 ? Colors.red : Colors.white,
                            animationDuration: Duration(milliseconds: 100),
                          ),
                          child: new Text('0',
                              style: TextStyle(
                                  color: buttonPressed_000
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
                              if (buttonPressed_111 == false){
                                buttonPressed_000 = false;
                              }
                              if (buttonPressed_111 == true){
                                buttonPressed_000 = true;
                              }
                              buttonPressed_111 = !buttonPressed_111;

                              if ( buttonPressed_111 == true) {
                                setState(() {
                                  answer_000 = "1";
                                  answer_111 = "0";
                                });
                              }

                              if ( buttonPressed_000 == true) {
                                setState(() {
                                  answer_000 = "0";
                                  answer_111 = "1";
                                });
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.green, width: 2),
                            padding: EdgeInsets.all(24),
                            primary:
                            buttonPressed_111 ? Colors.green : Colors.white,
                          ),
                          child: Text('1',
                              style: TextStyle(
                                  color: buttonPressed_111
                                      ? Colors.white
                                      : Colors.green,
                                  fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 80,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 0, right: 1),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (buttonPressed_0000 == false){
                                buttonPressed_1111 = false;
                              }
                              if (buttonPressed_0000 == true){
                                buttonPressed_1111 = true;
                              }
                              buttonPressed_0000 = !buttonPressed_0000;

                              if ( buttonPressed_1111 == true) {
                                setState(() {
                                  answer_0000 = "1";
                                  answer_1111 = "0";
                                });
                              }

                              if ( buttonPressed_0000 == true) {
                                setState(() {
                                  answer_0000 = "0";
                                  answer_1111 = "1";
                                });
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(24),
                            primary:
                            buttonPressed_0000 ? Colors.red : Colors.white,
                            animationDuration: Duration(milliseconds: 100),
                          ),
                          child: new Text('0',
                              style: TextStyle(
                                  color: buttonPressed_0000
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
                              if (buttonPressed_1111 == false){
                                buttonPressed_0000 = false;
                              }
                              if (buttonPressed_1111 == true){
                                buttonPressed_0000 = true;
                              }
                              buttonPressed_1111 = !buttonPressed_1111;

                              if ( buttonPressed_1111 == true) {
                                setState(() {
                                  answer_0000 = "1";
                                  answer_1111 = "0";
                                });
                              }

                              if ( buttonPressed_0000 == true) {
                                setState(() {
                                  answer_0000 = "0";
                                  answer_1111 = "1";
                                });
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.green, width: 2),
                            padding: EdgeInsets.all(24),
                            primary:
                            buttonPressed_1111 ? Colors.green : Colors.white,
                          ),
                          child: Text('1',
                              style: TextStyle(
                                  color: buttonPressed_1111
                                      ? Colors.white
                                      : Colors.green,
                                  fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, bottom: 20, left: 0, right: 1),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (buttonPressed_00000 == false){
                                buttonPressed_11111 = false;
                              }
                              if (buttonPressed_00000 == true){
                                buttonPressed_11111 = true;
                              }
                              buttonPressed_00000 = !buttonPressed_00000;
                              if (buttonPressed_00000 == true){
                                setState(() {
                                  last_state_answer_0 = answer_0;
                                  last_state_answer_1 = answer_1;

                                  last_state_answer_00 = answer_00;
                                  last_state_answer_11 = answer_11;

                                  last_state_answer_000 = answer_000;
                                  last_state_answer_111 = answer_111;

                                  last_state_answer_0000 = answer_0000;
                                  last_state_answer_1111 = answer_1111;
                                });
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.red, width: 2),
                            padding: EdgeInsets.all(24),
                            primary:
                            buttonPressed_00000 ? Colors.red : Colors.white,
                            animationDuration: Duration(milliseconds: 100),
                          ),
                          child: new Text('0',
                              style: TextStyle(
                                  color: buttonPressed_00000
                                      ? Colors.white
                                      : Colors.red,
                                  fontSize: 14)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 0,
                          bottom: 20,
                          left: 1,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (buttonPressed_11111 == false){
                                buttonPressed_00000 = false;
                              }
                              if (buttonPressed_11111 == true){
                                buttonPressed_00000 = true;
                              }
                              buttonPressed_11111 = !buttonPressed_11111;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Colors.green, width: 2),
                            padding: EdgeInsets.all(24),
                            primary:
                            buttonPressed_11111 ? Colors.green : Colors.white,
                          ),
                          child: Text('1',
                              style: TextStyle(
                                  color: buttonPressed_11111
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
                    height: 680,
                    width: 300,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.blueAccent)
                    // ),
                    child: Image.asset(
                      "assets/ParallelRegister.jpeg",
                      //width: 541.0,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 600,
                      left: 15,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 32.5,
                      left: 145,
                    ),
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 102.5,
                      left: 145,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 202.5,
                      left: 145,
                    ),
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 272.5,
                      left: 145,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 372.5,
                      left: 145,
                    ),
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 442.5,
                      left: 145,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 542.5,
                      left: 145,
                    ),
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 612.5,
                      left: 145,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 32.5,
                      left: 187.5,
                    ),
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 202.5,
                      left: 187.5,
                    ),
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 372.5,
                      left: 187.5,
                    ),
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 542.5,
                      left: 187.5,
                    ),
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 17,
                      left: 265,
                    ),
                    child: Text(
                      "Q",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 90,
                      left: 265,
                    ),
                    child: Text(
                      "Q",
                      style: TextStyle(color: Colors.black, fontSize: 26, decoration: TextDecoration.overline),
                      textAlign: TextAlign.center,

                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 185,
                      left: 265,
                    ),
                    child: Text(
                      "Q",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 260,
                      left: 265,
                    ),
                    child: Text(
                      "Q",
                      style: TextStyle(color: Colors.black, fontSize: 26, decoration: TextDecoration.overline),
                      textAlign: TextAlign.center,

                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 355,
                      left: 265,
                    ),
                    child: Text(
                      "Q",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 430,
                      left: 265,
                    ),
                    child: Text(
                      "Q",
                      style: TextStyle(color: Colors.black, fontSize: 26, decoration: TextDecoration.overline),
                      textAlign: TextAlign.center,

                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 525,
                      left: 265,
                    ),
                    child: Text(
                      "Q",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 600,
                      left: 265,
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
                    top: 30,
                    right: 50,
                    left: 10,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                          buttonPressed_11111 == true ? answer_0 : last_state_answer_0,
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
                    top: 25,
                    right: 50,
                    left: 10,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(buttonPressed_11111 == true ? answer_1 : last_state_answer_1,
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
                    top: 45,
                    right: 50,
                    left: 10,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                            buttonPressed_11111 == true ? answer_00 : last_state_answer_00,
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
                    top: 25,
                    right: 50,
                    left: 10,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                            buttonPressed_11111 == true ? answer_11 : last_state_answer_11,
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
                    top: 45,
                    right: 50,
                    left: 10,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                            buttonPressed_11111 == true ? answer_000 : last_state_answer_000,
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
                    top: 25,
                    right: 50,
                    left: 10,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                            buttonPressed_11111 == true ? answer_111 : last_state_answer_111,
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
                    top: 45,
                    right: 50,
                    left: 10,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                    buttonPressed_11111 == true ? answer_0000 : last_state_answer_0000,
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
                    top: 25,
                    right: 50,
                    left: 10,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                            buttonPressed_11111 == true ? answer_1111 : last_state_answer_1111,
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