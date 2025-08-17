//  import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:kite/pages/shortcut.dart';

// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => SignupState();
// }

// class SignupState extends State<Signup> {
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
// static  TextEditingController name= TextEditingController();
//     final Formkey = GlobalKey<FormState>();

//    submit()async{
//      final form = Formkey.currentState;
//     if( form!=null&&form.validate()){
//      try{
//          await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
        
//          Navigator.pop(context);
//      }on FirebaseAuthException catch(e){
//      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
//      }
//      }
//    }
//    @override
//   void initState() {
//      submit();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      resizeToAvoidBottomInset: false,
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Card(
//             margin: EdgeInsets.only(top: 200,bottom: 200,left: 20,right: 20),
//             elevation: 15,
//             child:  Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Form(
//                 key: Formkey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("SIGN UP",style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold
//                       ),),
//                          SizedBox(height: 20,),
//                     Shortcut().textfield(name, false,TextInputType.text,"Name"),
//                     SizedBox(height: 20,),
//                     Shortcut().textfieldemail(email, false,TextInputType.text,"Email"),
//                        SizedBox(height: 20,),
//                       Shortcut().textfield(password, false,TextInputType.text,"Password"),
//                          SizedBox(height: 50,),
//                     ElevatedButton(onPressed:()async{
//                         await submit();
//                     }, 
//                     child: Text("Sign Up"))
//                     ],
//                   ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }