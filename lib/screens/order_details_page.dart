import 'package:flutter/material.dart';
import 'package:mogeeb_company_app/utils/common.dart';

class OrderDetailsPage extends StatefulWidget {
  @override
  _OrderDetailsPageState createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: (AppBar(
          backgroundColor: primaryColor,
          title: Text(
            'تفاصيل الطلب',
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
                    
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                                        'تفاصيل الخدمة:- ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: accentColor),
                                      ),
                                    ],
                                  ),Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
          decoration: BoxDecoration(

            color: Colors.transparent,
            border: Border.all(color: accentColor),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'تفاصيل الخدمة ',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,)
                                        ),
                                      ),
                                    ],
                                  )),
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
                                  Padding(
                                    padding: const EdgeInsets.only(right: 40,left: 40,top: 5,bottom: 10),
                                    child: TextField(
                                      cursorColor: accentColor,
                                      style: TextStyle(fontSize: 15,color: Colors.white),
                                      decoration: InputDecoration(
                                        hintStyle: TextStyle(color: accentColor),
                                        hintText: 'تقديم عرض ',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: accentColor),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: accentColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(color: accentColor),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(15),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text("100",style: TextStyle(color: accentColor),),
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:  Text("ريال سعودي",style: TextStyle(color: accentColor),),

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: accentColor,
                                              border: Border.all(color: accentColor),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(15),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(10,4,10,4),
                                              child: Text("ارسال"),
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                        ),
                      ),
                      Positioned(
                        top: 0,
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
