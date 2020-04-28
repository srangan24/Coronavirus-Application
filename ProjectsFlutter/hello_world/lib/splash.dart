import 'package:flutter/material.dart';

bool isChecked = false;

class Splash extends StatefulWidget {
  @override
  _Splash createState() => _Splash();
}

class _Splash extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFDBFF),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Spacer(),
            Align(
              alignment: Alignment(-1, 0),
              child: Image.asset('assets/newlogo.png'),
            ),
            Spacer(),
            Align(
                alignment: Alignment(-0.6, 0),
                child: Image.asset('assets/apptitle.png')),
            Spacer(),
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
                    child: const Text('Log in',
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
                          text: 'Don\'t have an account? ',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                            color: Color(0xFF292CDA),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
