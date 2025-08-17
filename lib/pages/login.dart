//  import 'dart:math';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:kite/pages/Signup.dart';
// import 'package:kite/pages/bottomnav.dart';
// import 'package:kite/pages/shortcut.dart';
// import 'package:random_string/random_string.dart';

// class Loginpage extends StatefulWidget {
//   const Loginpage({super.key});

//   @override
//   State<Loginpage> createState() => LoginpageState();
// }

// class LoginpageState extends State<Loginpage> {
//   TextEditingController emaillogin = TextEditingController();
//     TextEditingController passwordlogin = TextEditingController();
//     final Formkeylogin = GlobalKey<FormState>();

// submitlogin()async{
//      final form = Formkeylogin.currentState;
    
//     if( form!=null&&form.validate()){
//      try{
//       await FirebaseAuth.instance.signInWithEmailAndPassword(email: emaillogin.text, password: passwordlogin.text);
      
//          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
//           return BottomNav();
//          }));
//           await FirebaseFirestore.instance.collection("").doc(Shortcut.id).set(
//           {
//             "name":SignupState.name.text,
//             "Email":emaillogin.text,
//             "Password":passwordlogin.text
//           }
//          );

//         }on FirebaseAuthException catch(e){
//      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
//      }
//      }
//    }

// @override
//   void initState() {
//    submitlogin();
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
//                 child: Form(
//                   key: Formkeylogin,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Login",style: TextStyle(
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold
//                         ),),
//                          SizedBox(height: 20,),
//                       Shortcut().textfieldemail(emaillogin, false,TextInputType.text,"Email"),
//                          SizedBox(height: 20,),
//                         Shortcut().textfield(passwordlogin,true,TextInputType.text,"Password"),
//                            SizedBox(height:30 ,),
//                       ElevatedButton(onPressed:()async{
//                           await submitlogin();
//                       }, 
//                       child: Text("Login")),
//                            SizedBox(height: 20,),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                      children: [
//                       Text("Create a new Account ? "),
//                       TextButton(onPressed: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context){
//                           return Signup();
//                         }));
//                       }, child:Text("Sign Up"))
//                      ],
//                       )
//                       ],
//                     ),
//                 ),
//               ),
                  
//             ),
//           ),
//         ),
//     );
    
//   }
// }