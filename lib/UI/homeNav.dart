import 'package:flutter/material.dart';

import 'account_screen.dart';
import 'farmer_search_screen.dart';
import 'home_screen.dart';
import 'notifications_screen.dart';
import 'previous_works_screen.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});
  static String route="/homeNav";
  @override
  State<HomeNav> createState() => _HomeNavState();
}
class _HomeNavState extends State<HomeNav> {



int _selectedItemScreen=0;
var screensNav=[
HomeScreen(),
MyAccountScreen(),
NotificationScreen(),
FarmerSearchScreen(),
//sPreviousWorksScreen(),
];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:screensNav[_selectedItemScreen],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedItemScreen,
        onTap: selectScreenNav,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff4CAF50),
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
          color: Colors.black
        ),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home_outlined,
            ),
            label: "الرئيسية"
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person_outline,
            ),
            label: "حسابي"
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.notifications_outlined,
            ),
            label: "الإشعارات"
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.save_outlined,
            ),
            label: "الاعمال السابقة"
          ),
           
        ],
      ) ,
    );
  }



void selectScreenNav(int index){
setState(() {
_selectedItemScreen=index;
});

}
}