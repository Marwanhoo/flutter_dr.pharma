import 'package:flutter/material.dart';
import 'package:flutter_dr_pharma/screens/create_account_screen.dart';
import 'package:flutter_dr_pharma/widgets/CustomRow.dart';
import 'package:flutter_dr_pharma/widgets/CustomTextFormField.dart';
import 'package:dash_flags/dash_flags.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  "Create an\naccount!",
                  style: TextStyle(
                    color: Color(0xFF566CA2),
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                prefixIcon: Icons.map,
                hintText: "Your Country",
                suffixIcon: Icons.arrow_forward_ios,
                onTap: () {
                  showCountryPicker(context);
                },
                showCursor: false,
                readOnly: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.phone_android,
                hintText: "Phone",
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFormField(
                  prefixIcon: Icons.mail, hintText: "Email"),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Password",
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.lock,
                hintText: "Confirm Password",
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomRow(
                text: "Continue",
                onPressed: () {
                  showBusinessSpecialization(context);
                },
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
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "sign in",
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

void showCountryPicker(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height / 2,
        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
        child: Column(
          children: [
            Container(
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              "select your country",
            ),
            const SizedBox(height: 10,),
            country(Country.sa,"Saudi Arabia"),
            const SizedBox(height: 5,),
            country(Country.ps,"Palestine"),
            const SizedBox(height: 5,),
            country(Country.eg,"Egypt"),
            const SizedBox(height: 5,),
            country(Country.bh,"Bahrain"),
          ],
        ),
      );
    },
  );
}
void showBusinessSpecialization(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.65,
        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
        child: Column(
          children: [
            Container(
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              "Your business specialization",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 25,),
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 100,
              ),
              children: [
                oneItemBusinessSpecialization(Icons.science, "Lab"),
                oneItemBusinessSpecialization(Icons.health_and_safety, "Pharmacy", true),
                oneItemBusinessSpecialization(Icons.local_hospital, "Clinic"),
                oneItemBusinessSpecialization(Icons.apartment, "Hospital"),
              ],
            ),
            const SizedBox(height: 65),
            CustomRow(
              text: "Continue",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const CreateAccountScreen()));
              },
            ),
          ],
        ),
      );
    },
  );
}
Widget oneItemBusinessSpecialization(IconData icon, String name,[bool shape = false]){
  return  Card(
    shape: (shape) ? RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(width: 1, color: Colors.red,),) : null,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF566CA2),
          child: Icon(icon,color: Colors.white,),
        ),
        Text(name),
      ],
    ),
  );
}
String generateCountryFlag() {
  String countryCode = 'eg';

  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
          (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

  return flag;
}
Widget country(Country country,String nameCountry){
  return  Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        width: 0.5,
      ),
    ),
    child: Row(
      children: [
        CountryFlag(
          country: country,
          height: 16,
        ),
        const SizedBox(width: 10,),
         Text(nameCountry),
      ],
    ),
  );

}