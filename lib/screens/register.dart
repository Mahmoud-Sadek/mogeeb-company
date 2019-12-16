import 'package:flutter/material.dart';
import 'package:mogeeb_company_app/screens/login_page.dart';
import 'package:mogeeb_company_app/utils/common.dart';
import 'package:mogeeb_company_app/widget/map_widegt.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>
{
  TextEditingController locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/1.png'),
                      fit: BoxFit.cover)),
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 0),
                      child: SizedBox(
                        width: 150,
                        height: 200,
                        child: Image(
                          image: ExactAssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          'انشاء حساب جديد',
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
                          'انشاء حساب جديد',
                          style: TextStyle(
                            fontSize: 20,
                            color: accentColor,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40,left: 40,top: 15,bottom: 10),
                      child: TextField(
                        cursorColor: accentColor,
                        style: TextStyle(fontSize: 15,color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'اسم الشركة',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: accentColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: accentColor),
                          ),
                        ),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(right: 40,left: 40,top: 15,bottom: 10),
                      child: TextField(
                        cursorColor: accentColor,
                        style: TextStyle(fontSize: 15,color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'اسم المسؤل',
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
                      padding: const EdgeInsets.only(right: 40,left: 40,top: 5,bottom: 10),
                      child: TextField(
                        keyboardType:TextInputType.number ,
                        cursorColor: accentColor,
                        style: TextStyle(fontSize: 15,color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'رقم الجوال',
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
                      padding: const EdgeInsets.only(right: 40,left: 40,top: 5,bottom: 10),
                      child: TextField(
                        keyboardType:TextInputType.emailAddress ,
                        cursorColor: accentColor,
                        style: TextStyle(fontSize: 15,color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'البريد الالكترونى',
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
                      padding: const EdgeInsets.only(right: 40,left: 40,top: 5,bottom: 10),
                      child: TextField(
                        obscureText: true,
                        cursorColor: accentColor,
                        style: TextStyle(fontSize: 15,color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'كلمة المرور',
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
                      padding: const EdgeInsets.only(right: 40,left: 40,top: 5,bottom: 10),
                      child: TextField(
                        keyboardType:TextInputType.number ,
                        cursorColor: accentColor,
                        style: TextStyle(fontSize: 15,color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'التخصص',
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
                      padding: const EdgeInsets.only(right: 40,left: 40,top: 5,bottom: 10),
                      child: TextField(
                        keyboardType:TextInputType.number ,
                        cursorColor: accentColor,
                        style: TextStyle(fontSize: 15,color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'السجل التجارى',
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
                      padding: const EdgeInsets.only(right: 40,left: 40,top: 5,bottom: 10),
                      child: TextField(
                        controller: locationController,
                        keyboardType:TextInputType.number ,
                        cursorColor: accentColor,
                        style: TextStyle(fontSize: 15,color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'الموقع',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: accentColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: accentColor),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.1,
                      height: MediaQuery.of(context).size.height/2.7,

                      child: MapWidegt(locationController),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,bottom: 15),
                      child: Container(
                        child: RaisedButton(
                          onPressed: (){},
                          color: primaryColor,
                          child: Text('تسجيل',style: TextStyle(color: accentColor),),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: accentColor)
                          ),
                        )
                        ,width: 150,height: 40,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30,top: 30,bottom: 30),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context){return LoginPage();},),);},
                            child: Text('لديك حساب بالفعل',style: TextStyle(color: accentColor,fontSize: 16,fontWeight: FontWeight.bold),),),

                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }

  }
