import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstViewState();
  }
}

String logic_and(bool a, bool b, bool c, bool d) {
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
  if (buf_a == true && buf_b == false) {
    return "0";
  }
  if (buf_a == false && buf_b == true) {
    return "0";
  }
  if (buf_a == true && buf_b == true) {
    return "1";
  }
  return "";
}

String logic_not_and(bool a, bool b, bool c, bool d) {
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
  if (buf_a == true && buf_b == false) {
    return "1";
  }
  if (buf_a == false && buf_b == true) {
    return "1";
  }
  if (buf_a == true && buf_b == true) {
    return "0";
  }
  return "";
}

String logic_or(bool a, bool b, bool c, bool d) {
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
  if (buf_a == true && buf_b == false) {
    return "1";
  }
  if (buf_a == false && buf_b == true) {
    return "1";
  }
  if (buf_a == true && buf_b == true) {
    return "1";
  }
  return "";
}

String logic_or_not(bool a, bool b, bool c, bool d) {
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
  if (buf_a == true && buf_b == false) {
    return "0";
  }
  if (buf_a == false && buf_b == true) {
    return "0";
  }
  if (buf_a == true && buf_b == true) {
    return "0";
  }
  return "";
}

String logic_not(bool a, bool b) {
  bool buf_a = false;

  if (b == true) {
    buf_a = true;
  }
  if (buf_a == false) {
    return "1";
  }
  if (buf_a == true) {
    return "0";
  }

  return "";
}

String logic_not_or(bool a, bool b, bool c, bool d) {
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
  if (buf_a == true && buf_b == false) {
    return "1";
  }
  if (buf_a == false && buf_b == true) {
    return "1";
  }
  if (buf_a == true && buf_b == true) {
    return "0";
  }
  return "";
}

class FirstViewState extends State<FirstView> {
  // Для логического "И"
  bool buttonPressed_0 = false;
  bool buttonPressed_1 = false;
  bool buttonPressed_2 = false;
  bool buttonPressed_3 = false;
  // Для логического "И-НЕ"
  bool buttonPressed_00 = false;
  bool buttonPressed_11 = false;
  bool buttonPressed_22 = false;
  bool buttonPressed_33 = false;
  // Для логического "ИЛИ"
  bool buttonPressed_000 = false;
  bool buttonPressed_111 = false;
  bool buttonPressed_222 = false;
  bool buttonPressed_333 = false;
  // Для логического "ИЛИ-НЕ"
  bool buttonPressed_0000 = false;
  bool buttonPressed_1111 = false;
  bool buttonPressed_2222 = false;
  bool buttonPressed_3333 = false;
  // Для логического "НЕ"
  bool buttonPressed_00000 = false;
  bool buttonPressed_11111 = false;
  // Для логического "НЕ-ИЛИ"
  bool buttonPressed_000000 = false;
  bool buttonPressed_111111 = false;
  bool buttonPressed_222222 = false;
  bool buttonPressed_333333 = false;
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        Color zeroButtonBackgroundColor = Colors.white;
        Color zeroButtonTextColor = Colors.red;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Лабораторная работа №1\nЛогические элементы',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Логическое И
                Expanded(
                  child: Container(
                    width: 260,
                    height: 260,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.red, width: 3)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 20,
                                        left: 25,
                                        right: 1),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_0 = !buttonPressed_0;
                                          buttonPressed_1 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_0
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
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
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_1 = !buttonPressed_1;
                                          buttonPressed_0 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_1
                                            ? Colors.green
                                            : Colors.white,
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
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 25,
                                        right: 3),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_2 = !buttonPressed_2;
                                          buttonPressed_3 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_2
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
                                      ),
                                      child: new Text('0',
                                          style: TextStyle(
                                              color: buttonPressed_2
                                                  ? Colors.white
                                                  : Colors.red,
                                              fontSize: 14)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 1,
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_3 = !buttonPressed_3;
                                          buttonPressed_2 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_3
                                            ? Colors.green
                                            : Colors.white,
                                      ),
                                      child: Text('1',
                                          style: TextStyle(
                                              color: buttonPressed_3
                                                  ? Colors.white
                                                  : Colors.green,
                                              fontSize: 14)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 30, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_0
                                            ? Colors.red
                                            : (buttonPressed_1
                                            ? Colors.green
                                            : Colors.black),
                                        width: 2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 60, bottom: 10, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_2
                                            ? Colors.red
                                            : (buttonPressed_3
                                            ? Colors.green
                                            : Colors.black),
                                        width: 2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: const Center(
                              child: Text('И',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30)),
                            ),
                            width: 120,
                            height: 200,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 1,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Text(
                                      ((buttonPressed_0 == false &&
                                          buttonPressed_1 == false &&
                                          buttonPressed_2 == false &&
                                          buttonPressed_3 == false) ||
                                          (buttonPressed_0 == false &&
                                              buttonPressed_1 == false) ||
                                          (buttonPressed_2 == false &&
                                              buttonPressed_3 == false))
                                          ? ""
                                          : logic_and(
                                          buttonPressed_0,
                                          buttonPressed_1,
                                          buttonPressed_2,
                                          buttonPressed_3),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ))),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                Border.all(width: 2, color: Colors.black),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey.shade300.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Логическое И-НЕ
                Expanded(
                  child: Container(
                    width: 260,
                    height: 260,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.red, width: 3)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 20,
                                        left: 25,
                                        right: 1),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_00 = !buttonPressed_00;
                                          buttonPressed_11 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_00
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
                                      ),
                                      child: Text('0',
                                          style: TextStyle(
                                              color: buttonPressed_00
                                                  ? Colors.white
                                                  : Colors.red, fontSize: 14)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 20,
                                        left: 1,
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_11 = !buttonPressed_11;
                                          buttonPressed_00 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_11
                                            ? Colors.green
                                            : Colors.white,
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
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 25,
                                        right: 3),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_22 = !buttonPressed_22;
                                          buttonPressed_33 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_22
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
                                      ),
                                      child: Text('0',
                                          style: TextStyle(
                                              color: buttonPressed_22
                                                  ? Colors.white
                                                  : Colors.red, fontSize: 14)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 1,
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_33 = !buttonPressed_33;
                                          buttonPressed_22 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_33
                                            ? Colors.green
                                            : Colors.white,
                                      ),
                                      child: Text('1',
                                          style: TextStyle(
                                              color: buttonPressed_33
                                                  ? Colors.white
                                                  : Colors.green,
                                              fontSize: 14)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 30, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_00
                                            ? Colors.red
                                            : (buttonPressed_11
                                            ? Colors.green
                                            : Colors.black), width: 2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 60, bottom: 10, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_22
                                            ? Colors.red
                                            : (buttonPressed_33
                                            ? Colors.green
                                            : Colors.black), width: 2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 120,
                            //padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 120,
                              height: 200,
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.black, width: 3),
                              ),
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    left: 105,
                                    top: 87,
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        const Text('И-НЕ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8.0),
                            width: 72,
                            height: 1,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Text(
                                      ((buttonPressed_00 == false &&
                                          buttonPressed_11 == false &&
                                          buttonPressed_22 == false &&
                                          buttonPressed_33 == false) ||
                                          (buttonPressed_00 == false &&
                                              buttonPressed_11 == false) ||
                                          (buttonPressed_22 == false &&
                                              buttonPressed_33 == false))
                                          ? ""
                                          : logic_not_and(
                                          buttonPressed_00,
                                          buttonPressed_11,
                                          buttonPressed_22,
                                          buttonPressed_33),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ))),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                Border.all(width: 2, color: Colors.black),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey.shade300.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  // Логическое ИЛИ
                  child: Container(
                    width: 260,
                    height: 260,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.red, width: 3)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 20,
                                        left: 25,
                                        right: 1),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_000 = !buttonPressed_000;
                                          buttonPressed_111 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_000
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
                                      ),
                                      child: Text('0',
                                          style: TextStyle(
                                              color: buttonPressed_000
                                                  ? Colors.white
                                                  : Colors.red, fontSize: 14)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 20,
                                        left: 1,
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_111 = !buttonPressed_111;
                                          buttonPressed_000 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_111
                                            ? Colors.green
                                            : Colors.white,
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
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 25,
                                        right: 3),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_222 = !buttonPressed_222;
                                          buttonPressed_333 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_222
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
                                      ),
                                      child: Text('0',
                                          style: TextStyle(
                                              color: buttonPressed_222
                                                  ? Colors.white
                                                  : Colors.red, fontSize: 14)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 1,
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_333 = !buttonPressed_333;
                                          buttonPressed_222 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_333
                                            ? Colors.green
                                            : Colors.white,
                                      ),
                                      child: Text('1',
                                          style: TextStyle(
                                              color: buttonPressed_333
                                                  ? Colors.white
                                                  : Colors.green,
                                              fontSize: 14)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 30, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_000
                                            ? Colors.red
                                            : (buttonPressed_111
                                            ? Colors.green
                                            : Colors.black), width: 2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 60, bottom: 10, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_222
                                            ? Colors.red
                                            : (buttonPressed_333
                                            ? Colors.green
                                            : Colors.black), width: 2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: const Center(
                              child: Text('ИЛИ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30)),
                            ),
                            width: 120,
                            height: 200,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 1,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Text(
                                      ((buttonPressed_000 == false &&
                                          buttonPressed_111 == false &&
                                          buttonPressed_222 == false &&
                                          buttonPressed_333 == false) ||
                                          (buttonPressed_000 == false &&
                                              buttonPressed_111 == false) ||
                                          (buttonPressed_222 == false &&
                                              buttonPressed_333 == false))
                                          ? ""
                                          : logic_or(
                                          buttonPressed_000,
                                          buttonPressed_111,
                                          buttonPressed_222,
                                          buttonPressed_333),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ))),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                Border.all(width: 2, color: Colors.black),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey.shade300.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  // Логическое ИЛИ-НЕ
                  child: Container(
                    width: 260,
                    height: 260,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.red, width: 3)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 20,
                                        left: 25,
                                        right: 1),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_0000 = !buttonPressed_0000;
                                          buttonPressed_1111 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_0000
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
                                      ),
                                      child: Text('0',
                                          style: TextStyle(
                                              color: buttonPressed_0000
                                                  ? Colors.white
                                                  : Colors.red, fontSize: 14)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 20,
                                        left: 1,
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_1111 = !buttonPressed_1111;
                                          buttonPressed_0000 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_1111
                                            ? Colors.green
                                            : Colors.white,
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
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 25,
                                        right: 3),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_2222 = !buttonPressed_2222;
                                          buttonPressed_3333 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_2222
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
                                      ),
                                      child: Text('0',
                                          style: TextStyle(
                                              color: buttonPressed_2222
                                                  ? Colors.white
                                                  : Colors.red, fontSize: 14)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 1,
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_3333 = !buttonPressed_3333;
                                          buttonPressed_2222 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_3333
                                            ? Colors.green
                                            : Colors.white,
                                      ),
                                      child: Text('1',
                                          style: TextStyle(
                                              color: buttonPressed_3333
                                                  ? Colors.white
                                                  : Colors.green,
                                              fontSize: 14)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 30, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_0000
                                            ? Colors.red
                                            : (buttonPressed_1111
                                            ? Colors.green
                                            : Colors.black), width: 2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 60, bottom: 10, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_2222
                                            ? Colors.red
                                            : (buttonPressed_3333
                                            ? Colors.green
                                            : Colors.black), width: 2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 120,
                            //padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 120,
                              height: 200,
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.black, width: 3),
                              ),
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    left: 105,
                                    top: 87,
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        const Text('ИЛИ - НЕ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30,
                                          ),
                                          maxLines: 2,),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8.0),
                            width: 72,
                            height: 1,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Text(
                                      ((buttonPressed_0000 == false &&
                                          buttonPressed_1111 == false &&
                                          buttonPressed_2222 == false &&
                                          buttonPressed_3333 == false) ||
                                          (buttonPressed_0000 == false &&
                                              buttonPressed_1111 == false) ||
                                          (buttonPressed_2222 == false &&
                                              buttonPressed_3333 == false))
                                          ? ""
                                          : logic_or_not(
                                          buttonPressed_0000,
                                          buttonPressed_1111,
                                          buttonPressed_2222,
                                          buttonPressed_3333),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ))),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                Border.all(width: 2, color: Colors.black),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey.shade300.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Логическое Не
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 260,
                    height: 260,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.red, width: 3)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 25,
                                        right: 3),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_00000 = !buttonPressed_00000;
                                          buttonPressed_11111 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_00000
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
                                      ),
                                      child: Text('0',
                                          style: TextStyle(
                                              color: buttonPressed_00000
                                                  ? Colors.white
                                                  : Colors.red, fontSize: 14)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 1,
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_11111 = !buttonPressed_11111;
                                          buttonPressed_00000 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_11111
                                            ? Colors.green
                                            : Colors.white,
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
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_00000
                                            ? Colors.red
                                            : (buttonPressed_11111
                                            ? Colors.green
                                            : Colors.black), width: 2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 120,
                            //padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 120,
                              height: 200,
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.black, width: 3),
                              ),
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    left: 105,
                                    top: 87,
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        const Text('НЕ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30,
                                          ),
                                          maxLines: 2,),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8.0),
                            width: 65,
                            height: 1,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Text(
                                      (buttonPressed_00000 == false &&
                                          buttonPressed_11111 == false)
                                          ? ""
                                          : logic_not(
                                          buttonPressed_00000,
                                          buttonPressed_11111),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ))),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                Border.all(width: 2, color: Colors.black),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey.shade300.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  // Логическое НЕ-ИЛИ
                  child: Container(
                    width: 260,
                    height: 260,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 20,
                                        left: 25,
                                        right: 1),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_000000 = !buttonPressed_000000;
                                          buttonPressed_111111 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_000000
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
                                      ),
                                      child: new Text('0',
                                          style: TextStyle(
                                              color: buttonPressed_000000
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
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_111111 = !buttonPressed_111111;
                                          buttonPressed_000000 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_111111
                                            ? Colors.green
                                            : Colors.white,
                                      ),
                                      child: Text('1',
                                          style: TextStyle(
                                              color: buttonPressed_111111
                                                  ? Colors.white
                                                  : Colors.green,
                                              fontSize: 14)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 25,
                                        right: 3),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_222222 = !buttonPressed_222222;
                                          buttonPressed_333333 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.red, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_222222
                                            ? Colors.red
                                            : Colors.white,
                                        animationDuration:
                                        Duration(milliseconds: 100),
                                      ),
                                      child: new Text('0',
                                          style: TextStyle(
                                              color: buttonPressed_222222
                                                  ? Colors.white
                                                  : Colors.red,
                                              fontSize: 14)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 20,
                                        left: 1,
                                        right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          buttonPressed_333333 = !buttonPressed_333333;
                                          buttonPressed_222222 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Colors.green, width: 2),
                                        padding: EdgeInsets.all(24),
                                        primary: buttonPressed_333333
                                            ? Colors.green
                                            : Colors.white,
                                      ),
                                      child: Text('1',
                                          style: TextStyle(
                                              color: buttonPressed_333333
                                                  ? Colors.white
                                                  : Colors.green,
                                              fontSize: 14)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 30, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_000000
                                            ? Colors.red
                                            : (buttonPressed_111111
                                            ? Colors.green
                                            : Colors.black), width: 2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 60, bottom: 10, left: 10, right: 0),
                                child: Container(
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: buttonPressed_222222
                                            ? Colors.red
                                            : (buttonPressed_333333
                                            ? Colors.green
                                            : Colors.black), width: 2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 120,
                            //padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 120,
                              height: 200,
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.black, width: 3),
                              ),
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    right: 105,
                                    top: 87/2,
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 105,
                                    bottom: 40,
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        const Text('НЕ-ИЛИ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 30)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 1,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Text(
                                      ((buttonPressed_000000 == false &&
                                          buttonPressed_111111 == false &&
                                          buttonPressed_222222 == false &&
                                          buttonPressed_333333 == false) ||
                                          (buttonPressed_000000 == false &&
                                              buttonPressed_111111 == false) ||
                                          (buttonPressed_222222 == false &&
                                              buttonPressed_333333 == false))
                                          ? ""
                                          : logic_not_or(
                                          buttonPressed_000000,
                                          buttonPressed_111111,
                                          buttonPressed_222222,
                                          buttonPressed_333333),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ))),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                Border.all(width: 2, color: Colors.black),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey.shade300.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}