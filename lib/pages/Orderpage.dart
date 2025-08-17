//  import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:kite/pages/Signup.dart';
// import 'package:kite/pages/shortcut.dart';

// class OrderPage extends StatefulWidget {
//   const OrderPage({super.key});

//   @override
//   State<OrderPage> createState() => _OrderPageState();
// }

// class _OrderPageState extends State<OrderPage> {

//    text()async{
//   return await FirebaseFirestore.instance.collection("hell").doc(Shortcut.id).get();
//    }
//    @override
//   void initState() {
//      text();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child:  Text(text().toString())
//       ),
//     );
//   }
// }