// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chat_app/chat/widgets/custom_text.dart';
import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class ConversitionScreen extends StatelessWidget {
  const ConversitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: AppColors.bgApp,
        leading: Icon(Icons.arrow_back, color:Colors.white, size:27),
        centerTitle: true,
        title: Text("Alan Byrd", style:TextStyle(fontSize: 23, color: AppColors.white),
        ),
        actions:[
          Icon(Icons.chat, size:25, color: AppColors.white,),
        ],
       ),
          body: Padding(padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  child: Container(
                   width: double.infinity,
                    padding:EdgeInsets.symmetric(horizontal: 14),
                     decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                         topLeft:Radius.circular(30),
                         topRight: Radius.circular(30),
                      ),
                     ),
             
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  //  textBaseline: TextBaseline.alphabetic,
                   children: [
                     CircleAvatar(
                      backgroundImage: AssetImage("assets/pro-3.jpg"),
                      radius: 30,
                     ),
                        SizedBox(width:7),
                       Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("9:30 PM", style: TextStyle(fontSize:14,color:AppColors.subTitle),
                          ),
                          SizedBox(height: 4),
                      
                          Container(
                            padding: EdgeInsets.all(7),
                            width: 200,
                            height: 40,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(7),
                               color: AppColors.grey,
                             ), 
                              child: Text("hi, baby" ,style: TextStyle(fontSize:19,color:AppColors.white)
                               ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.all(7),
                            width: 200,
                            height: 40,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(7),
                               color: AppColors.grey,
                             ), 
                              child: Text("how are u ?" ,style: TextStyle(fontSize:19,color:AppColors.white)
                               ),
                          ),
                        ],
                       ),
                   ],
                 ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(top:40),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                            Text("Now", style: TextStyle(fontSize:16,color:AppColors.subTitle),
                            ),
                            SizedBox(height: 4),
                            Container(
                              padding: EdgeInsets.all(7),
                              width: 400,
                              height: 70,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(7),
                                 color: AppColors.bgApp,
                               ), 
                                child: Text("Not bad, i just finished a sports i come back to home, and u ? " ,style: TextStyle(fontSize:19,color:AppColors.white)
                                 ),
                            ), 
                                 SizedBox(height:70),
                               Container(
                                width:double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.grey ,
                              borderRadius: BorderRadius.circular(66),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.send,color: Colors.black,
                                  ),
                                  hintText: "Type your message here", 
                                  border: InputBorder.none),
                            ),
                               )
                    ]
                    ),
                 )
              ],
            ),
          ),
          ),
    );
  }
}

 