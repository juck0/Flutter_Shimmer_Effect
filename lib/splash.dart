import 'package:flutter/material.dart';

import 'home page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future Delay() async{
    await Future.delayed(const Duration(seconds:4 ));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) =>HomePage()) ,);
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Center(child: Image.asset("images/Youtube Icon.png",height: 100,width: 100,)));
  }
}
