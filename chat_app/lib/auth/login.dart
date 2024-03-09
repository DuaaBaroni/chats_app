
import 'package:chat_app/auth/signup.dart';
import 'package:chat_app/chat/widgets/custom_btn.dart';
import 'package:chat_app/chat/widgets/custom_text.dart';
import 'package:chat_app/chat_view.dart';
import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _SigninViewState();
}

class _SigninViewState extends State<Login> {
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
                const CircleAvatar(
                  backgroundImage:AssetImage("assets/pro-2.jpg"),
                radius: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Login To Your Account',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color:Colors.black),
                ),
                const SizedBox(
                  height: 20,
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
                  prefixIcon: Icons.lock,
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_rounded)), color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Log In',
                  onPressed: () {
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const ChatView(),
                          ));
                  }, style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('if you haven\'t an account ?', style:TextStyle(fontSize: 16, color:Colors.black)),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const ChatView(),
                          ));
                        },
                        child: const Text('create one!',style: TextStyle(fontSize:14, color: Colors.grey),
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
