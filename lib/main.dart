import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mogeeb_company_app/screens/splach_page.dart';
import 'package:mogeeb_company_app/utils/application.dart';
import 'package:mogeeb_company_app/utils/common.dart';
import 'package:mogeeb_company_app/utils/interner_connection.dart';
import 'package:mogeeb_company_app/utils/translations.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String language = _prefs.getString('language') ?? 'ar';
  bool isInDebugMode = false;

  return runApp(new MyApp(defaultLanguage: language));
}

class MyApp extends StatefulWidget {
  MyApp({
    this.defaultLanguage,
  });

  final String defaultLanguage;

  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale defaultLocale;
  SpecificLocalizationDelegate _localeOverrideDelegate;

  Map _source = {ConnectivityResult.none: false};
  MyConnectivity _connectivity = MyConnectivity.instance;

  bool inertnetConnecting = true;

  @override
  void initState() {
    super.initState();

    defaultLocale = Locale(widget.defaultLanguage);

    _localeOverrideDelegate = new SpecificLocalizationDelegate(defaultLocale);
    applic.onLocaleChanged = onLocaleChange;

    inertnetConnecting = true;
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
  }

  onLocaleChange(Locale locale) {
    setState(() {
      _localeOverrideDelegate = new SpecificLocalizationDelegate(locale);
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
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: accentColor,
      ),
      title: 'mogeeb',
      debugShowCheckedModeBanner: false,

      localizationsDelegates: [
        _localeOverrideDelegate,
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: applic.supportedLocales(),

      home:  new SplashPage(),
      locale: defaultLocale,
    );
  }
}










