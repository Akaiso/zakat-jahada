import 'dart:async';
import 'package:flutter/material.dart';
import 'package:zakat_jahada/view/HomePage.dart';
import 'package:zakat_jahada/view/LandingPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
   late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.4, end: 2.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    _startSplashScreenTimer();
    // Timer(
    //     const Duration(seconds: 4),
    //     () => Navigator.push(
    //         context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  void _startSplashScreenTimer() {
    Timer(const Duration(seconds: 5), _navigateToHome);
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const LandingPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child:  Center(
          child: ScaleTransition(scale: _animation,
          child: const Icon(Icons.mosque_rounded)),
        ),
      ),
    );
  }
}
