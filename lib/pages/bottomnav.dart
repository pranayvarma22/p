 import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kite/pages/HomeScreen.dart';
import 'package:kite/pages/Orderpage.dart';
import 'package:kite/pages/profilepage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  late Homescreen home;
//  late OrderPage order;
  late ProfilePage profile;
  List<Widget> route=[];
 static int currentindex=0;
  @override
  void initState() {
    home=Homescreen();
   // order=OrderPage();
    profile=ProfilePage();
    route=[home,profile];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: route[currentindex],
      bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Colors.white,
      color: Colors.black,
       onTap: (int index){
          setState(() {
             currentindex=index;
          });
      },
        animationDuration: Duration(microseconds: 10000),
       items: [
        Icon(Icons.home_outlined,
        color: Colors.white,
        ),
        Icon(Icons.shopping_bag_outlined,  color: Colors.white,),
        Icon(Icons.person_outline,  color: Colors.white,)
      ]),
    );
  }
}