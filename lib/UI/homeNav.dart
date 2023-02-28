import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account_screen.dart';
import 'farmer_search_screen.dart';
import 'home_screen.dart';
import 'notifications_screen.dart';
import 'projects_screen.dart';

class HomeNav extends StatelessWidget {

final GlobalKey<NavigatorState> firstTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> secondTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> thirdTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> fourthTabNavKey = GlobalKey<NavigatorState>();

CupertinoTabController tabController=CupertinoTabController(initialIndex: 0);

  static String route="/homeNav";

    @override
  Widget build(BuildContext context) {

var listOfKeys=[firstTabNavKey,secondTabNavKey,thirdTabNavKey,fourthTabNavKey];

    return WillPopScope(
      onWillPop: ()async {
         return !await listOfKeys[tabController.index].currentState!.maybePop();
      },
      child: CupertinoTabScaffold(
        controller: tabController,
        tabBar:CupertinoTabBar(
          
          backgroundColor: Colors.white,
          activeColor: Color(0xff4CAF50),
          inactiveColor: Colors.black,
          items:const<BottomNavigationBarItem> [
     BottomNavigationBarItem(
              icon:Icon(Icons.home_outlined,
              size: 27,
              ),
              label: "الرئيسية"
            ),
            BottomNavigationBarItem(
              
              icon:Icon(Icons.person_outline,
              size: 27,
              ),
              label: "حسابي"
            ),
             BottomNavigationBarItem(
              icon:Icon(Icons.notifications_outlined,
              size: 27,
              ),
              label: "الإشعارات"
            ),
             BottomNavigationBarItem(
              icon:Icon(Icons.save_outlined,
              size: 27,
              ),
              label: "اعمالي"
            ),
          ],
        ) ,
        
        tabBuilder: (context,index){
          switch (index) {
            case 0:
              return CupertinoTabView(builder:(context){
              
                return CupertinoPageScaffold(child: HomeScreen());
              },
              navigatorKey: listOfKeys[index],
              );
              break;
              case 1:
              return CupertinoTabView(builder:(context){
                return CupertinoPageScaffold(child: MyAccountScreen());
              },
              navigatorKey: listOfKeys[index],
              );
              break;
              case 2:
              return CupertinoTabView(builder:(context){
                return CupertinoPageScaffold(child: NotificationScreen());
              },
              navigatorKey: listOfKeys[index],
              );
              break;
              case 3:
              return CupertinoTabView(builder:(context){
                return CupertinoPageScaffold(child: ProjectsScreen());
              },
              navigatorKey: listOfKeys[index],);
              break;
            default:
            return CupertinoTabView(builder:(context){
                return CupertinoPageScaffold(child: HomeScreen());
              },
              navigatorKey: listOfKeys[index],
              );
          }
        }
        
        ),
    );
  }
}

