import 'package:flutter/material.dart';
import 'package:mogeeb_company_app/utils/common.dart';

import 'home_page.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
int _currentIndex =0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        onTap: (value){
          _currentIndex = value;
          setState(() {

          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon:  Image.asset("assets/images/house.png",width: 0,),
            title: Text("طلبات حالية"
              ,style: TextStyle(color: accentColor,fontSize: 18),),
          ),

          BottomNavigationBarItem(
              icon: Image.asset("assets/images/shopping.png",width: 0,),
              title: Text("طلبات سابقة"
                ,style: TextStyle(color: accentColor,fontSize: 18),)
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/bell.png",width: 0,),
              title: Text("الاعدادات"
                ,style: TextStyle(color: accentColor,fontSize: 18),)
          ),
        ],
        backgroundColor: primaryColor,
      ),


      body: ChangePage(_currentIndex),
    );
  }
  Widget ChangePage(int currentIndex){
    switch (currentIndex){

      case 0 : return Homepage();
      case 1 : return Homepage();
      case 2 : return Homepage();


      break;
      default : return Homepage();

    }
  }
}










