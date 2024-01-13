import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dr_pharma/screens/map_screen.dart';
import 'package:flutter_dr_pharma/widgets/CustomRow.dart';
import 'package:flutter_dr_pharma/widgets/CustomTextFormField.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const CustomTextFormField(
                prefixIcon: Icons.local_hospital,
                hintText: "Pharmacy Name",
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFormField(
                prefixIcon: Icons.phone_android,
                hintText: "Pharmacy phone",
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Pharmacy license",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                "Please upload your pharmacy license",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  showAttachFile(context);
                },
                child: DottedBorder(
                  radius: const Radius.circular(16),
                  borderType: BorderType.RRect,
                  color: const Color(0xFF566CA2),
                  dashPattern: const [8, 8],
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: const BoxDecoration(),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cloud_upload),
                        Text("Attach A File"),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                prefixIcon: Icons.map,
                hintText: "Your Region",
                onTap: () {
                  showRegion(context);
                },
                showCursor: false,
                readOnly: true,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomRow(text: "Sign up", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

void showRegion(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.75,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your Region",
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(16),
                ),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MapScreen(),
                    ),
                  );
                },
                icon: const Text(
                  "Show On Map",
                ),
                label: const Icon(Icons.location_pin),
              ),
            ),
            const ListTile(
              title: Text("alsharqa 34"),
              subtitle: Text("Ahmed Maher Street,Mansoura"),
              trailing: Text("568 km"),
              isThreeLine: true,
            ),
            const DottedLine(
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 8.0,
              dashColor: Colors.grey,
            )
          ],
        ),
      );
    },
  );
}

void showAttachFile(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.40,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Attach a file",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Please upload your pharmacy license",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
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
                oneItemAttachFile(Icons.add_to_drive_outlined, "From Drive"),
                oneItemAttachFile(Icons.phone_iphone, "Your Files", true),
              ],
            ),
          ],
        ),
      );
    },
  );
}

Widget oneItemAttachFile(IconData icon, String name, [bool shape = false]) {
  return Card(
    shape: (shape)
        ? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: Color(0xFF566CA2),
            ),
          )
        : null,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF566CA2),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
