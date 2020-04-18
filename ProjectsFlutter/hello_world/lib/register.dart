import 'package:flutter/material.dart';
//import 'package:custom_switch_button/custom_switch_button.dart';

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
            child: Stack(
          children: <Widget>[
            Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(color: Color(0xFF6158FF)),
                )),
            Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                      color: Color(0xFF5149EA),
                      borderRadius: new BorderRadius.only(
                          bottomRight: const Radius.elliptical(80, 200),
                          topLeft: const Radius.elliptical(100, 30))),
                )),
            Positioned(
                right: 0,
                top: MediaQuery.of(context).size.height / 3.5,
                child: Container(
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                      color: Color(0xFF5149EA),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.elliptical(500, 500))),
                )),
            Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 3 / 4,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius:
                            new BorderRadius.all(const Radius.circular(63.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF999999),
                            blurRadius: 4.0,
                            spreadRadius: 3,
                          )
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Align(
                            alignment: Alignment(0, -0.75),
                            child: Image.asset(
                              "assets/doctor.png",
                              height: MediaQuery.of(context).size.height * .3,
                            )),
                        Align(
                            alignment: Alignment(0, 0.25),
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: MediaQuery.of(context).size.height / 18,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: new BorderRadius.all(
                                            const Radius.circular(63.0))),
                                    labelText: 'Enter your email',
                                  ),
                                ))),
                        Align(
                            alignment: Alignment(0, 0.5),
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: MediaQuery.of(context).size.height / 18,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: new BorderRadius.all(
                                            const Radius.circular(63.0))),
                                    labelText: 'Enter your password',
                                  ),
                                ))),
                        Align(
                            alignment: Alignment(0, 0.75),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height / 18,
                              child: RaisedButton(
                                color: Color(0xFF76A6FF),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                ),
                                onPressed: () {},
                                child: const Text('Register',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFFFFF))),
                              ),
                            )),
                        Align(
                          alignment: Alignment(0, 1),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Already have an account? ',
                                      style:
                                          TextStyle(color: Color(0xFF000000),
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text: 'Log in',
                                    style: TextStyle(color: Color(0xFF292CDA), fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )))
          ],
        )));
  }
}
