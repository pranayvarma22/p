 import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Stack(
          children: [
           Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
              
                 Image.asset("assets/images/headphone.png"),
                
              ],
            ),
           )
          ],
         ),
         Container(
          color: Colors.white,
          margin: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("JBL HeadPhone",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("\$1000",style: TextStyle(
                    fontSize:30,
                    color: Colors.lightGreen
                  ),)
                ],
              ),
              SizedBox(height: 10,),
              Text("JBL is a popular brand known for its high-quality audio products, including headsets and headphones. JBL headsets are designed to deliver powerful bass, clear sound, and comfortable design for long usage. Many models feature Bluetooth connectivity, noise cancellation, long battery life, and built-in microphones for calls and gaming. They are widely used for music, movies, gaming, and professional use because of their durability and stylish design.",style: TextStyle(
                fontWeight: FontWeight.normal
              ),)
            ],
          )
         ),
         SizedBox(height: 20,),
         Container(
        
          margin: EdgeInsets.only(left: 300),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Text("Buy",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),)
         )
       ],
     ),
    );
  }
}