import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class ggg extends StatelessWidget {
  const ggg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: AppColors.bgApp,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )
        ),
        
        
      )
    );
  }
}