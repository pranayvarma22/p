 import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class Shortcut{
  static String id = randomAlphaNumeric(10);

 Widget textfield(TextEditingController values,bool hide,TextInputType keyboard,String name){
  return TextFormField(
  
    controller: values,
    obscureText: hide,
    validator: (value){
    if(value==null||value.isEmpty){
    return "Enter a correct $name ";
    }
    return null;
    },
   decoration: InputDecoration(
    labelText: name,
   border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20)
   ),
   ),
  );
 }
   Widget textfieldemail(TextEditingController values,bool hide,TextInputType keyboard,String name){
  return TextFormField(
   
    keyboardType: keyboard,
   controller: values,
    obscureText: hide,
    validator: (value){
    if(value==null||value.isEmpty){
    return "Enter a correct $name ";
    }
    return null;
    },
   decoration: InputDecoration(
    labelText: name,
   border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20)
   ),
   ),
  );
 }

 }