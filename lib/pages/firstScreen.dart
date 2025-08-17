import 'package:flutter/material.dart';
import 'package:kite/pages/bottomnav.dart';

class LogoApp extends StatefulWidget {
  const LogoApp({super.key});

  @override
  State<LogoApp> createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
   body: Container(
    margin: EdgeInsets.only(top: 80),
    padding: EdgeInsets.only(left: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/headphone.png",filterQuality: FilterQuality.high,),
        Text("Explore\nThe Best Product\nExperiance Real Sound\nWith Pure Bass.",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),),
        SizedBox(height: 40,),
       Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
              return Placeholder();
              }));
            },
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
              return BottomNav();
                }));
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30), 
                     gradient: LinearGradient(colors: [
                      Colors.green,
                      Colors.lightGreen,
                      Colors.deepOrange
                     ]),
                     color: Colors.black,
                ),
               margin: EdgeInsets.only(right: 30),
               //padding: EdgeInsets.only(left: 25,top: 28),
                 child: Icon(Icons.arrow_forward,size: 60,)
                      ),
            ),
          )
        ],
       )
      ],
    ),
   ),
    );
  }
}