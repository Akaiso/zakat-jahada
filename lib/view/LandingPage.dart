import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zakat_jahada/view/HomePage.dart';
import 'package:zakat_jahada/view/LogInPage.dart';
import 'package:zakat_jahada/view/SignUpPage.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: const AssetImage("assets/images/bg1.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.05), BlendMode.dstATop))),
            // color: Colors.black,
            child: MediaQuery.of(context).size.width > 500
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            accessButton(() {
                              Get.to(const LogInPage(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 1500));
                            }, "Log in", Icons.login),
                            const SizedBox(
                              width: 55,
                            ),
                            accessButton(() {
                              Get.to(HomePage(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 1500),
                                  curve: Curves.easeInOut);
                            }, "Guest", Icons.person),
                            const SizedBox(
                              width: 55,
                            ),
                            accessButton(() {
                              Get.to(const SignUpPage(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 1500));
                            }, "Sign up", Icons.add),
                          ]),
                    ],
                  )
                : Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 180.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            accessButton(() {
                              Get.to(const LogInPage(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 1500));
                            }, "Log in", Icons.login),
                            const SizedBox(
                              height: 30,
                            ),
                            accessButton(() {
                              Get.to(HomePage(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 1500),
                                  curve: Curves.easeInOut);
                            }, "Guest", Icons.person),
                            const SizedBox(
                              height: 30,
                            ),
                            accessButton(() {
                              Get.to(const SignUpPage(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 1500));
                            }, "Sign up", Icons.add),
                          ]),
                    ),
                  )));
  }
}

Widget accessButton(onPressed, text, icon) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, foregroundColor: Colors.white),
        child:  Row(
          children: [Icon(icon), const SizedBox(width: 10), Text(text)],
        ),
      ),
      //Text(text, style: const TextStyle(fontWeight: FontWeight.w500),)
    ],
  );
}
