import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';

void main() => runApp(MyApp());
bool isChecked = false;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                    color: Color(0xFF3BAC88),
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
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                color: Color(0xFF3BAC88),
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
                                color: Color(0xFF3BAC88),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                          bottom: 50,
                          left: 25,
                          child: Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    'You\'re All Clear!',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFCDFFF3),
                                        fontSize: 30),
                                  ),
                                  Text(
                                    '\nYou have not been close or \ncrossed paths with anyone\nwith a confirmed Covid-19 \ncase.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFCDFFF3),
                                        fontSize: 16),
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
                          color: Color(0xFF3BAC88),
                          borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(200.0),
                          )),
                    ),
                  ),
                  Positioned(
                    top: -125,
                    right: 30,
                    height: MediaQuery.of(context).size.width / 2,
                    child: Image.asset('assets/phone.png'),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height / 2.2,
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
                          )
                        ],
                      )),
                  Positioned(
                    width: MediaQuery.of(context).size.width,
                    bottom: MediaQuery.of(context).size.height / 10,
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
