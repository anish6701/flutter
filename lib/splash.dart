import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

import 'pages/Home.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState()=> _SplashState();
}
class _SplashState extends State<Splash>{
  @override
  void initState(){
    super.initState();
    _navigatetohome();

  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds:1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'hello',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100,
            width: 100,
            color: Colors.blue,),
            Container(
            child: Text(
              'splash screen', 
              style:TextStyle(fontSize: 24
        ),),) ,],),
      ),
    );
    
  }
}