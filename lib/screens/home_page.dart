import 'package:flutter/material.dart';
import 'package:mogeeb_company_app/utils/common.dart';

import 'order_details_page.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: (AppBar(
          backgroundColor: primaryColor,
          title: Text(
            'قائمة الطلبات',
            style: TextStyle(color: accentColor),
          ),
          centerTitle: true,
        )),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover)),
          child:ListView(
          children: <Widget>[
             Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){return OrderDetailsPage();},),);
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: accentColor),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8,8,8,8.0),
                          child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10, left: 4, right: 4),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/icone-4.png'),
                                                  fit: BoxFit.fill)),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'الاسم',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: accentColor),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'اسم الخدمة:- ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: accentColor),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'الموقع:- ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: accentColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                decoration: BoxDecoration(
                                  color: accentColor,
                                  border: Border.all(color: accentColor),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text("1/1/2019   12:00"),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

          ],
        )));
  }
}
