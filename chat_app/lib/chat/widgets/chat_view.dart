// ignore_for_file: prefer_const_constructors

import 'package:chat_app/colors.dart';
import 'package:chat_app/chat/widgets/favorite_contact.dart';
import 'package:chat_app/chat/widgets/list_tile.dart';
import 'package:chat_app/chat/widgets/user_model.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.bgApp,
      appBar: AppBar(
        backgroundColor: AppColors.bgApp,
        title:Text("Chats", style:TextStyle(color:AppColors.white, fontSize:27, fontWeight: FontWeight.w500),
        ),
         actions: [
          Icon(Icons.settings, color:AppColors.white, size:30),
         ],
      ),

        body:Column(
          children: [
            FavoriteContacts(),
            Expanded(
              child: Container(
                padding:EdgeInsets.symmetric(horizontal: 10),
                 decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                     topLeft:Radius.circular(30),
                     topRight: Radius.circular(30),
                  ),
                 ),
              
                 child: ListView.separated(
                itemBuilder: (context, index) {
                   return ListTileItem( 
                  image:  user[index].image, 
                   name: user[index].name,
                   lastMsg: user[index].lastMsg,
                   date: user[index].date,
                   onTap: (){},
                   );
                }, 
                separatorBuilder: (context, index) {
                  return Divider(
                      indent: 7,
                      endIndent: 7,
                      thickness: 3,
                  );
                }, 
                itemCount: user.length
                ),
              ),
            ),
          ],
          
        ),
       
    );
  }
}

