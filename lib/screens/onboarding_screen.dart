import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildPageView(pageController),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                buildLogoAvatar(),
                const Spacer(),
                buildPageIndicator(pageController),
                const SizedBox(
                  height: 30,
                ),
                buildElevatedButton(
                  "login",
                  const Color(0XFF566CA2),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildElevatedButton(
                  "sign up",
                  Colors.transparent,
                  Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildElevatedButton(
    String text,
    Color backgroundColor, [
    Color? textColor,
  ]) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: textColor != null
                ? const BorderSide(color: Colors.white)
                : BorderSide.none,
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget buildLogoAvatar() {
    return const Align(
      alignment: Alignment.topLeft,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage("assets/images/logo.png"),
      ),
    );
  }

  Widget buildPageIndicator(PageController pageController) {
    return SmoothPageIndicator(
      controller: pageController,
      count: imagesBackground.length,
      effect: const SlideEffect(
        spacing: 2.5,
        activeDotColor: Colors.red,
        dotHeight: 12,
        dotWidth: 12,
      ),
    );
  }

  Widget buildPageView(PageController pageController) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) {
        return buildOneItem(index);
      },
      itemCount: imagesBackground.length,
    );
  }

  Widget buildOneItem(index) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(
          width: double.infinity,
          fit: BoxFit.fitWidth,
          image: AssetImage(imagesBackground[index]),
        ),
        const Image(
          width: double.infinity,
          fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/shadow.png"),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(vector[index]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textVectorTitle[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  textVectorBody[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

List<String> imagesBackground = [
  "assets/images/onboarding1.png",
  "assets/images/obboarding2.png",
  "assets/images/onboarding3.png",
];
List<String> vector = [
  "assets/images/vector1.png",
  "assets/images/vector2.png",
  "assets/images/vector3.png",
];
List<String> textVectorTitle = [
  "Dr. Pharma  best choice",
  "All you have to do is choose",
  "What are you waiting for?",
];
List<String> textVectorBody = [
  "At  Doctor Pharma you have a complete store at your fingertips You will find the best offers and the best deals on your phone on the Doctor pharma app",
  "Whatever your needs are: medicines, beauty products, medical supplies, clinic supplies, or even laboratory supplies. We will ensure that you get it with the best quality and best price",
  "Join us in the Doctor Pharma community to ensure access to all your medical needs in the safest and best way possible without any fatigue or fear.",
];
