import 'package:flutter/material.dart';
//import 'package:geolocator/geolocator.dart';
import 'package:geolocation/geolocation.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corona App',
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
        primarySwatch: Colors.indigo,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
  StreamSubscription subscription;
  bool locationUpdatesOn = false;
  Location _currentPosition;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Number of updates: ${_counter}"),
          Text(
              "${_currentPosition == null ? 'Press the button to locate your address!' : _currentPosition}"),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            child: Text("Locate!"),
            onPressed: () => _getCurrentLocation(),
          ),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            child: Text(
                "${locationUpdatesOn ? 'Turn off updates' : 'turn on updates'}"),
            onPressed: () => locationUpdatesOn ? _turnOffUpdates() : _getLocationUpdates(),
          )
        ],
      )),
    );
  }

  _getCurrentLocation() {
     subscription =
        Geolocation.currentLocation(accuracy: LocationAccuracy.best)
            .listen((result) {
      if (result.isSuccessful) {
        setState(() {
          _currentPosition = result.location;
        });
        // todo with result
      }
    });
  }

  _getLocationUpdates() {
    print('turning on updates!');
    subscription =
        Geolocation.locationUpdates(
      accuracy: LocationAccuracy.best,
      displacementFilter: 2.0, // in meters
      inBackground:
          true, // by default, location updates will pause when app is inactive (in background). Set to `true` to continue updates in background.
    ).listen((result) {
      if (result.isSuccessful) {
        _currentPosition = result.location;
        setState(() {
          _currentPosition = result.location;
          _counter++;
        });
      }
    });
  }

  _turnOffUpdates(){
    subscription.cancel();
  }
}
