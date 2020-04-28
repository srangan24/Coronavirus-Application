import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

bool isChecked = false;

class Stats extends StatefulWidget {
  @override
  _Stats createState() => _Stats();
}

class _Stats extends State<Stats> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(42.7653662, -71.4676);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

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
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.75,
                decoration: BoxDecoration(
                  color: Color(0xFF5149EA),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                              color: Color(0xFF5149EA),
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
                                      color: Color(0xFFD9E3FF),
                                      fontSize: 25),
                                ))),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF5149EA),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          flex: 10,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(40, 5, 5, 42),
                              child: Text(
                                "You've been in the vicinity of \nconfirmed Covid-19 cases.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFD9E3FF),
                                    fontSize: 16),
                              )),
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                                child: Text("5",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 45,
                                    )))),
                        Expanded(flex: 1, child: Container())
                      ],
                    ),
                    Align(
                        alignment: Alignment(0, -1),
                        child: Image.asset('assets/graph.png')),
                  ],
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            flex: 4,
                            child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width / 12,
                                    MediaQuery.of(context).size.height / 25,
                                    0,
                                    25),
                                child: Text("Details",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF133AA6),
                                      fontSize: 30,
                                    )))),
                        Expanded(
                            flex: 7,
                            child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width / 30,
                                    MediaQuery.of(context).size.height / 22,
                                    0,
                                    25),
                                child:
                                    Text("Click to view locations on the map",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF5A86FF),
                                          fontSize: 12,
                                        )))),
                      ],
                    ),
                    Expanded(
                        child: Container(
                            child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            width: 160.0,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 5, 0),
                                child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.0,
                                          color: const Color(0xFF979797)),
                                      borderRadius: new BorderRadius.all(
                                          const Radius.circular(63.0)),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 8, 0, 0),
                                          child: Center(
                                            child: Text("4/20/2020",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF133AA6),
                                                  fontSize: 15,
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                            child: Text("1:59 PM",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF5A86FF),
                                                  fontSize: 12,
                                                ))),
                                      ],
                                    )))),
                        Container(
                            width: 160.0,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 5, 0),
                                child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.0,
                                          color: const Color(0xFF979797)),
                                      borderRadius: new BorderRadius.all(
                                          const Radius.circular(63.0)),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 8, 0, 0),
                                          child: Center(
                                            child: Text("4/19/2020",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF133AA6),
                                                  fontSize: 15,
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                            child: Text("6:23 PM",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF5A86FF),
                                                  fontSize: 12,
                                                ))),
                                      ],
                                    )))),
                        Container(
                            width: 160.0,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 5, 0),
                                child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.0,
                                          color: const Color(0xFF979797)),
                                      borderRadius: new BorderRadius.all(
                                          const Radius.circular(63.0)),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 8, 0, 0),
                                          child: Center(
                                            child: Text("4/18/2020",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF133AA6),
                                                  fontSize: 15,
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                            child: Text("11:43 AM",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF5A86FF),
                                                  fontSize: 12,
                                                ))),
                                      ],
                                    )))),
                        Container(
                            width: 160.0,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 5, 0),
                                child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.0,
                                          color: const Color(0xFF979797)),
                                      borderRadius: new BorderRadius.all(
                                          const Radius.circular(63.0)),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 8, 0, 0),
                                          child: Center(
                                            child: Text("4/16/2020",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF133AA6),
                                                  fontSize: 15,
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                            child: Text("5:34 PM",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF5A86FF),
                                                  fontSize: 12,
                                                ))),
                                      ],
                                    )))),
                      ],
                    ))),
                    Spacer()
                  ],
                )),
            Expanded(
                child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 11.0,
                    )))
          ],
        )));
  }
}
