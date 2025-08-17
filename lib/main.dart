import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kite/pages/bottomnav.dart';

 void main()async{
    WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyPage());
 }
class MyPage extends StatefulWidget {
 const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BottomNav()
    );
  }
}