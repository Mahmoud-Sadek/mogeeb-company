import 'package:flutter/material.dart';
import 'package:mogeeb_company_app/screens/home_page.dart';
import 'package:mogeeb_company_app/screens/register.dart';
import 'package:mogeeb_company_app/utils/common.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/1.png'), fit: BoxFit.cover)),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50,bottom: 10),
                    child: SizedBox(
                      width:170 ,
                      height: 220,
                      child: Image(
                        image: ExactAssetImage('assets/images/logo.png')
                        ,fit: BoxFit.cover,),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontSize: 20,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = primaryColor,
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontSize: 20,
                          color: accentColor,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40,left: 40,top: 5,bottom: 10),
                    child: TextField(
                      cursorColor: accentColor,
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.perm_identity,color:accentColor ,),
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: 'اسم المستخدم',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: accentColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: accentColor),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 40,left: 40,top: 5,bottom: 5),
                    child: TextField(
                      cursorColor: accentColor,
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.https,color:accentColor ),
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: 'كلمة المرور',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: accentColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: accentColor),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 60,bottom: 15),
                    child: Container(
                      child: RaisedButton(
                        onPressed: (){},
                        color: primaryColor,
                        child: Text('دخول',style: TextStyle(color: accentColor),),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: accentColor)
                        ),
                      )
                      ,width: 150,height: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 50,bottom: 30),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context){return Register();},),);},
                          child: Text('انشاء حساب جديد',style: TextStyle(color: accentColor,fontSize: 16,fontWeight: FontWeight.bold),),),
                        InkWell(
                               onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context){return Home();},),);},
                          child: Text('تخطى',style: TextStyle(color: accentColor,fontSize: 16,fontWeight: FontWeight.bold),),)

                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
    );

  }
}




