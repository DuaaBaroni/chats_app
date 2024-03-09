import 'package:chat_app/auth/login.dart';
import 'package:chat_app/chat/widgets/custom_btn.dart';
import 'package:chat_app/chat/widgets/custom_text.dart';
import 'package:chat_app/colors.dart';
import 'package:chat_app/conversion.dart';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUp> {
  bool isNotVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar( backgroundImage:AssetImage("assets/pro-2.jpg"),
              radius: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Create A New Account',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color:Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  label: 'Name',
                  prefixIcon: Icons.person, color:Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextField(
                  label: 'Email',
                  prefixIcon: Icons.email, color: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  label: 'Password',
                  obscureText: isNotVisable,
                  prefixIcon: Icons.lock, color: Colors.black,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isNotVisable = !isNotVisable;
                        });
                      },
                      icon: Icon((isNotVisable)
                          ? Icons.visibility_off_rounded
                          : Icons.remove_red_eye_rounded)),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Register',
                  onPressed: () {
                       Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                          );
                  }, style: TextStyle(color: AppColors.bgApp,),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('if you have an account ?', style:TextStyle(fontSize: 16, color:Colors.black)
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                          );
                        },
                        child: const Text('login now', style: TextStyle(fontSize:14, color: Colors.grey),
                        ),
                        ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}