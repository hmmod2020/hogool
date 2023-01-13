import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text("Welcome from Navigation s"),
      ),
      bottomNavigationBar:BottomNavigationBar(
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
}