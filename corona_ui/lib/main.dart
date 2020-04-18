import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: IntroPage(),
    );
  }
}

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double cardHeight = MediaQuery.of(context).size.height*3.1/4;
    double cardWidth = MediaQuery.of(context).size.width/10;
    return Card(
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(100), topLeft: Radius.circular(100)),
      ),
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(cardWidth, cardHeight, cardWidth, 0),
      child: Center(
      child: Column(
        children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25),
              width: 200,
              child: RaisedButton(
                padding: EdgeInsets.all(5),
                  child: Text("Log in",
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  color: Color(0xFF0076BA),
                  highlightColor: Color(0xFF3F0052),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  onPressed: () {},
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:'Do not have an account? '
                      ),
                    TextSpan(
                      text:'Register',
                      style: 
                        TextStyle(
                          color: Color(0xFF3F0052)),
                    ),
                  ],
                ),
              ),
            ),
        ]
      )
      )
    );
  }
}

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF3F0052), Color(0xFF0076BA)]
                  )
                ),
              ),
            Container(
              child: Image(
                image: AssetImage('Images/logo.png'),
              ),
              margin: EdgeInsets.only(top: 100.0),
            ),
            LoginCard(),
          ],
        )
      )
    );
  }
}