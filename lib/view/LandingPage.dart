import 'package:flutter/material.dart';
import 'package:zakat_jahada/view/HomePage.dart';
import 'package:zakat_jahada/view/LogInPage.dart';
import 'package:zakat_jahada/view/SignUpPage.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child:
         MediaQuery.of(context).size.width > 500
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      accessButton(() {}, "Log in"),
                      const SizedBox(width: 15,),
                      accessButton(() {}, "Guest"),
                      const SizedBox(width: 15,),
                      accessButton(() {}, "Sign up"),
                    ]),
              ],
            )
            : Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      accessButton(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogInPage()));
                      }, "Log in"),const SizedBox(height: 25,),
                      accessButton(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }, "Guest"),const SizedBox(height: 25,),
                      accessButton(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      }, "Sign up"),
                    ]),
              )));
  }
}

Widget accessButton(onPressed, text) {
  return Column(
    children: [
      ElevatedButton(onPressed: onPressed, child: Text(text)),
      //Text(text, style: const TextStyle(fontWeight: FontWeight.w500),)
    ],
  );
}
