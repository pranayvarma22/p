// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kite/pages/products.dart';


// ignore: must_be_immutable
class Homescreen extends StatefulWidget {

  const Homescreen({super.key});
 

  @override
  State<Homescreen> createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen> {

  List products=[
 "assets/images/mobilephone.png",
  "assets/images/laptop.png",
   "assets/images/smartWatch.png",
    "assets/images/ear buds.png",
     "assets/images/Headphones.png",
     
  ];
@override
  Widget build(BuildContext context) {
    return Scaffold(
body: 
 Container(
    margin: EdgeInsets.only(top: 40,left: 20,right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hey,Pranay_Varma",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),),
                   Text("WelCome",style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 25
          ),),
            ],
          ),
              ClipRRect(
                child: Image.asset("assets/images/headphone.png",width: 100,height: 100,),
              ),],),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Products",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  )
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                children: [
                  Text("Catagories",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                   Text("see all",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen
                  ),),
                ],
              ),
              Row(
                children: [
                      Container(
      
     padding: EdgeInsets.only(left: 25,right: 25,top: 35,bottom: 20),
    
      decoration: BoxDecoration(
         
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepOrange
      ),
      margin: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 60),
      height: 80,
      width: 100,
      child:Text("See All",style: TextStyle(
        color: Colors.white,
      
      ),)
    ),
  
   Expanded(
     child: Container(
                     
                     margin: EdgeInsets.only(left: 5),
                    height: 200,
                    
                               child: ListView.builder(
                    shrinkWrap:true ,
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,itemBuilder: (context,index){
                               return catalog(products[index]);
                               }),
                    ),
   ),
                ],
              ),
              Text("ALL PRODUCTS",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),
              SizedBox(
                height: 330,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                       return Products();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                       padding: EdgeInsets.all(10),
                        color: Colors.white,
                       child: Column(
                         children: [
                           Image.asset("assets/images/headphone.png",width: 200,height: 200,fit: BoxFit.contain,),
                           Text("HeadPhone",style: TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold
                           ),),
                           SizedBox(height: 10,),
                           Row(
                          
                            children: [
                              Text("\$1000",style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold
                           ),),
                              SizedBox(width: 150,),
                              Icon(Icons.add)
                            ],
                           )
                         ],
                       ),
                      ),
                    ),Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                     padding: EdgeInsets.all(10),
                      color: Colors.white,
                     child: Column(
                       children: [
                         Image.asset("assets/images/headphone.png",width: 200,height: 200,fit: BoxFit.contain,),
                         Text("HeadPhone",style: TextStyle(
                          fontSize: 30,fontWeight: FontWeight.bold
                         ),),
                         SizedBox(height: 10,),
                         Row(
                        
                          children: [
                            Text("\$1000",style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold
                         ),),
                            SizedBox(width: 150,),
                            Icon(Icons.add)
                          ],
                         )
                       ],
                     ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                     padding: EdgeInsets.all(10),
                      color: Colors.white,
                     child: Column(
                       children: [
                         Image.asset("assets/images/headphone.png",width: 200,height: 200,fit: BoxFit.contain,),
                         Text("HeadPhone",style: TextStyle(
                          fontSize: 30,fontWeight: FontWeight.bold
                         ),),
                         SizedBox(height: 10,),
                         Row(
                        
                          children: [
                            Text("\$1000",style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold
                         ),),
                            SizedBox(width: 150,),
                            Icon(Icons.add)
                          ],
                         )
                       ],
                     ),
                    )
                  ],
                ),
              ),
               
              ],
  
    
  
    ),
  ),

   
    );
 }

 catalog (String name){
  return Container(
    
   padding: EdgeInsets.all(5),
  
    decoration: BoxDecoration(

     // borderRadius: BorderRadius.circular(20),
      color: Colors.white
    ),
    margin: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 60),
    height: 100,
    width: 100,
    child:Column(
      
      children: [
         Image.asset(name,height: 80,width:80,fit: BoxFit.fill),
         Icon(Icons.arrow_forward)
      ],
    )
  );

 }

  
 }

