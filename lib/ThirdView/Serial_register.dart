import 'package:flutter/material.dart';

class SerialRegister extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SerialRegisterState();
  }
}

class SerialRegisterState extends State<SerialRegister> {
  bool buttonPressed_0 = true;
  bool buttonPressed_1 = false;

  bool buttonPressed_00 = true;
  bool buttonPressed_11 = false;

  var list = ['0', '0', '0', '0'];
  var list_old = ['0', '0', '0', '0'];

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
                    top: 310,
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
                          child: Text('0',
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
                  padding: const EdgeInsets.only(
                    top: 55,
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
                              buttonPressed_00 = !buttonPressed_00;
                              if (buttonPressed_00 == true) {
                                setState(() {
                                  list_old[0] = list[0];
                                  list_old[1] = list[1];
                                  list_old[2] = list[2];
                                  list_old[3] = list[3];
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
                              buttonPressed_11 = !buttonPressed_11;
                              if (buttonPressed_11 == true) {
                                if (buttonPressed_1 == true) {
                                    list[3] = list[2];
                                    list[2] = list[1];
                                    list[1] = list[0];
                                    list[0] = '1';
                                }
                                if (buttonPressed_0 == true) {
                                    list[3] = list[2];
                                    list[2] = list[1];
                                    list[1] = list[0];
                                    list[0] = '0';
                                }
                              }
                              if (buttonPressed_11 == false) {
                                setState(() {
                                  list_old[0] = list[0];
                                  list_old[1] = list[1];
                                  list_old[2] = list[2];
                                  list_old[3] = list[3];
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
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 330,
                    width: 780,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.blueAccent)
                    // ),
                    child: Image.asset(
                      "assets/SerialRegister.jpeg",
                      //width: 541.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 217.5,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            right: 0,
                          ),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Center(
                                child: Text(
                                    buttonPressed_11 == true
                                        ? list[0]
                                        : list_old[0],
                                    style: const TextStyle(
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
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 121,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            right: 0,
                          ),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Center(
                                child: Text(
                                    buttonPressed_11 == true
                                        ? list[1]
                                        : list_old[1],
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
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 127.5,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            right: 0,
                          ),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Center(
                                child: Text(
                                    buttonPressed_11 == true
                                        ? list[2]
                                        : list_old[2],
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
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 132.5,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            right: 0,
                          ),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Center(
                                child: Text(
                                    buttonPressed_11 == true
                                        ? list[3]
                                        : list_old[3],
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
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 280,
                      left: 20,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 155,
                      left: 160,
                    ),
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 155,
                      left: 335,
                    ),
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 155,
                      left: 510,
                    ),
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 155,
                      left: 683,
                    ),
                    child: Text(
                      "T",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 155,
                      left: 117,
                    ),
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 155,
                      left: 291,
                    ),
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 155,
                      left: 465,
                    ),
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 155,
                      left: 639,
                    ),
                    child: Text(
                      "D",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 235,
                      left: 117,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 235.5,
                      left: 291,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 237.5,
                      left: 465,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 237.5,
                      left: 639,
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 75,
                      left: 205,
                    ),
                    child: Text(
                      "Q1",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 75,
                      left: 375,
                    ),
                    child: Text(
                      "Q2",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 75,
                      left: 550,
                    ),
                    child: Text(
                      "Q3",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 75,
                      left: 730,
                    ),
                    child: Text(
                      "Q4",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
              ],
            ),
          ],
        ),
      );
    });
  }
}
