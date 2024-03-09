// ignore_for_file: prefer_const_constructors

import 'package:chat_app/colors.dart';
import 'package:chat_app/chat/widgets/user_model.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Text("Favorite Contacts", style:TextStyle(color: AppColors.white,fontSize:23),
             ),
             SizedBox(height:10),
               SizedBox(
                height:100,
                 child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index ){
                    return Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(user[index].image),
                            ),
                             SizedBox(height:10),
                            Text(
                              user[index].name,
                              style:TextStyle(color: AppColors.white, fontSize: 15)
                            ),
                          ],
                    );
                  }, 
                  separatorBuilder: (context, index) {
                    return SizedBox(width:7);
                  }, 
                  itemCount: user.length
                 ),
               ),
        ],
      ),
    );
  }
}