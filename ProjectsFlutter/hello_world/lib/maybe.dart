import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';

bool isChecked = false;

class Maybe extends StatefulWidget {
  @override
  _Maybe createState() => _Maybe();
}

class _Maybe extends State<Maybe>{
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE541),
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(62.0),
                    ),
                  ),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: IconButton(
                              icon: Icon(Icons.dehaze),
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFE541),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 4,
                              child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'CoronaX',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 22, 98, 79),
                                        fontSize: 25),
                                  ))),
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFE541),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                          bottom: MediaQuery.of(context).size.height/12,
                          left: 30,
                          child: Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    'Uh Oh...            ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF28987C),
                                        fontSize: 30),
                                  ),
                                  Text(
                                    '\nSomeone who you\’ve been \nclose to has a confirmed \nCovid-19 case.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF28987C),
                                        fontSize: 15),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  )),
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 2 / 3 - 24,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 206, 215, 241),
                    ),
                  ),
                  Positioned(
                    right: -80,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE541),
                          borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(200.0),
                          )),
                    ),
                  ),
                  Positioned(
                    top: -125,
                    right: 30,
                    height: MediaQuery.of(context).size.width / 2,
                    child: Image.asset('assets/yuhh.png'),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(63.0),
                              bottomRight: const Radius.circular(63.0),
                              topRight: const Radius.circular(63.0))),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment(0, -0.75),
                            child: Container(
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    margin: new EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    alignment: Alignment(0, 0),
                                    child: Text(
                                      "TIPS",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 12),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF6158FF),
                                      borderRadius: new BorderRadius.all(
                                          const Radius.circular(63.0)),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    margin: new EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    alignment: Alignment(6.5, 0),
                                    child: Text(
                                      "DETAILS",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF6158FF),
                                          fontSize: 12),
                                    ),
                                    /*decoration: BoxDecoration(
                                      color: Color(0xFF6158FF),
                                      borderRadius: new BorderRadius.all(
                                        const Radius.circular(63.0)
                                      ),
                                    ),   ADD WHEN THE DETAILS IS CLICKED*/
                                  )
                                ],
                              ),
                              width: MediaQuery.of(context).size.width / 2,
                              height: MediaQuery.of(context).size.height / 15,
                              decoration: BoxDecoration(
                                  color: Color(0xFFD3DDF8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFFD2D2D2),
                                        blurRadius: 4.0,
                                        spreadRadius: 1,
                                        offset: Offset(
                                          0,
                                          2.0,
                                        ))
                                  ],
                                  borderRadius: new BorderRadius.only(
                                      bottomLeft: const Radius.circular(63.0),
                                      bottomRight: const Radius.circular(63.0),
                                      topRight: const Radius.circular(63.0),
                                      topLeft: const Radius.circular(63.0))),
                            ),
                          ),
                          Card(
                            elevation: 0,
                            margin: new EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height/6.5, 20, 50),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 300,
                                ),
                                Positioned(
                                  left: 10,
                                  child: Container(
                                    alignment: Alignment(0.5, -0.75),
                                    width: 160,
                                    child: Text(
                                      "How to Maintain a Healthy Lifestyle While Social Distancing",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF3BAC88),
                                          fontSize: 17),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                    //height: MediaQuery.of(context).size.height/2,
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: Image.asset('assets/cool.png')
                                    ),
                                Positioned(
                                  left: 10,
                                  bottom: 0,
                                  child: Container(
                                    alignment: Alignment(0.5, 0),
                                    width: MediaQuery.of(context).size.width*0.6,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF000000),
                                          fontSize: 11),
                                      softWrap: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Positioned(
                    width: MediaQuery.of(context).size.width,
                    bottom: MediaQuery.of(context).size.height / 20,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                            flex: 8,
                            child: Center(
                              child: Text(
                                'Tested Positive?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF16624F),
                                    fontSize: 30),
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                              child: CustomSwitchButton(
                                backgroundColor: Color(0xFFC74343),
                                unCheckedColor: Color(0xFFCED7F1),
                                animationDuration: Duration(milliseconds: 400),
                                checkedColor: Color(0xFFFF9595),
                                checked: isChecked,
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFFCED7F1),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

