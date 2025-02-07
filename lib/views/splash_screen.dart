import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters_bis/views/home.dart';

import '../common/assets_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late AnimationController _animationController ;
  late Animation<double> _animation ;
  @override
  void initState() {
    _animationController = AnimationController( duration: Duration(seconds: 3), vsync: this);
    _animation = CurvedAnimation(parent:_animationController, curve: Curves.easeInOut);
    super.initState();
    _startAnimation();
  }

  void _startAnimation(){
    _animationController.forward();
    _animationController.addStatusListener((status){
      if (status==AnimationStatus.completed){
        Navigator.push(context , MaterialPageRoute(builder: (context) => Home()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: AnimatedBuilder (
          animation: _animation ,
          builder : (context , child){
            return Transform.rotate(
              angle: _animation.value * 6.283,
               child: Image.asset(KLogo),
            );
          }),
      ),
    );
  }
}
