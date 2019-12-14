import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:mogeeb_company_app/utils/common.dart';
import 'package:mogeeb_company_app/utils/interner_connection.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Map _source = {ConnectivityResult.none: false};
  MyConnectivity _connectivity = MyConnectivity.instance;

  bool inertnetConnecting = true;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pop(context);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void initState() {
    super.initState();
    startTime();

    inertnetConnecting = true;
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_source.keys.toList()[0]) {
      case ConnectivityResult.none:
        inertnetConnecting = false;
        break;
      case ConnectivityResult.mobile:
        inertnetConnecting = true;
        break;
      case ConnectivityResult.wifi:
        inertnetConnecting = true;
    }
    return new Scaffold(
      body: new Center(
        child: new Container(
          color: primaryColor,
          child: new Stack(
            children: <Widget>[
              new Image.asset(
                'assets/images/splash.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 150,
                left: 0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                      child: new CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(accentColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
