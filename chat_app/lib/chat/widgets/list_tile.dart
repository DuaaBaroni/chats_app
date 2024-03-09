import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    super.key, required this.image, required this.name, required this.lastMsg, required this.date, required this.onTap,
  });
   
   final String image;
   final String name;
   final String lastMsg;
   final String date;
   final Function() onTap;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 30,
      ),
        title: Text(name, style:TextStyle(color:AppColors.title, fontSize: 17, fontWeight:FontWeight.w500 )
        ),
        subtitle: Text(lastMsg, style:TextStyle(color:AppColors.subTitle, fontSize: 16)
         ),
         trailing: Text(date,style:TextStyle(color:AppColors.subTitle, fontSize: 16)
          ),
    );
  }
}