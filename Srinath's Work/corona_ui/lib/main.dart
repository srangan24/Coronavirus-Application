import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.fromLTRB(40, 500, 40, 0),
                    child: Center(
                    child: Stack(
                      children: <Widget>[
                          Container(
                            /* height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width/2,
                    decoration: BoxDecoration(
                      color: Color(0xFF3BAC88),
                      borderRadius: new BorderRadius.only(
                        bottomLeft: const Radius.circular(200.0),
                  ) */
                            height: 150.0,
                            width: 300.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(50.0))),
                            child: Center(
                              child: Text("Login",
                              style: TextStyle(color: Colors.white, fontSize: 22),
                              textAlign: TextAlign.center,),
                            ),
                          )
                        ],
                     )
                    )
                  ),
                ],
              )
            )
          )
      );
    }
  }


/* child: FlatButton(
                        shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)),
                        color: Colors.white,
                        textColor: Colors.red,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {},
                        child: Text("Add to Cart".toUpperCase(),
                          style: TextStyle(
                          fontSize: 14.0,
                          ),
                        ),
                      ),*/
