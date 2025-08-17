//  import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:kite/pages/Signup.dart';
// import 'package:kite/pages/bottomnav.dart';
// import 'package:kite/pages/shortcut.dart';
// import 'package:kite/services/AdminHome.dart';

// class Adminlogin extends StatefulWidget {
//   const Adminlogin({super.key});

//   @override
//   State<Adminlogin> createState() => _AdminloginState();
// }

// class _AdminloginState extends State<Adminlogin> {
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();

//   submit()async{
//    await FirebaseFirestore.instance.collection("yuvaraj").get().then((snapshot){
//     snapshot.docs.forEach((value){
//       if(value["Email"]!=username.text.trim()){
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter valid Email")));
//       }
//       else if(value["password"]!=password.text.trim()){
//        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter valid password")));
//       }
//       else{
//         Navigator.push(context,MaterialPageRoute(builder: (context){
//        return AdminHome();
//         }));
//       }
//     });
//    });
//   }
//   @override
//   void initState() {
//     submit();
//     super.initState();
//   }
   
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     resizeToAvoidBottomInset: false,
//       body: 
//        Center(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Card(
//              margin: EdgeInsets.only(top: 200,bottom: 200,left: 20,right: 20),
//               elevation: 15,
//               child:  Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("Admin Login",style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold
//                       ),),
//                        SizedBox(height: 20,),
//                     Shortcut().textfieldemail(username, false,TextInputType.text,"Username"),
//                        SizedBox(height: 20,),
//                       Shortcut().textfield(password,true,TextInputType.text,"Password"),
//                          SizedBox(height:30 ,),
//                     ElevatedButton(onPressed:()async{
//                          await submit();
//                     }, 
//                     child: Text("Login")),
//                          SizedBox(height: 20,),
                   
//                     ],
//                   ),
//               ),
                  
//             ),
//           ),
//         ),
//     );
//   }
// }