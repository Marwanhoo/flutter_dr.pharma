import 'package:flutter/material.dart';
import 'package:flutter_dr_pharma/screens/signup_screen.dart';
import 'package:flutter_dr_pharma/widgets/CustomRow.dart';
import 'package:flutter_dr_pharma/widgets/CustomTextFormField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(26),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome\nBack!",
                  style: TextStyle(
                    color: Color(0xFF566CA2),
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.person,
                hintText: "Username or Email",
              ),
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
              CustomRow(
                text: "Sign In",
                onPressed: () {},
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "you don’t have account ? ",
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(2),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "sign up",
                      style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        decorationColor: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
