import 'package:flutter/material.dart';
import 'package:flutter_dr_pharma/widgets/CustomRow.dart';
import 'package:flutter_dr_pharma/widgets/CustomeTextFormField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome\nBack!",
                  style: TextStyle(
                    color: Color(0xFF566CA2),
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextFormField(
                  prefixIcon: Icons.person, hintText: "Username or Email"),
              const SizedBox(
                height: 30,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Password",
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color(0XFF347A6A),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomRow(text: "Sign In"),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Or login with",
                  style: TextStyle(
                    color: Color(0XFFDA3A2A),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFAFBFA),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 14.50,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundColor: const Color(0XFFFAFBFA),
                      radius: 30,
                      child: Image.asset(
                        "assets/images/google.png",
                        width: 35,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFAFBFA),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 14.50,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundColor: const Color(0XFFFAFBFA),
                      radius: 30,
                      child: Image.asset(
                        "assets/images/apple.png",
                        width: 35,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: const TextSpan(
                  text: 'you don’t have account? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'sign up',
                      style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
