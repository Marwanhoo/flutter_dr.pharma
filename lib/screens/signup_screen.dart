import 'package:flutter/material.dart';
import 'package:flutter_dr_pharma/widgets/CustomRow.dart';
import 'package:flutter_dr_pharma/widgets/CustomeTextFormField.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Create an\naccount!",
                  style: TextStyle(
                    color: Color(0xFF566CA2),
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                  prefixIcon: Icons.phone_android, hintText: "Phone"),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(prefixIcon: Icons.mail, hintText: "Email"),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Password",
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Confirm Password",
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                prefixIcon: Icons.map,
                hintText: "Your Country",
                suffixIcon: Icons.arrow_forward_ios,
              ),
              SizedBox(
                height: 30,
              ),
              CustomRow(text: "Contiunue"),
            ],
          ),
        ),
      ),
    );
  }
}
