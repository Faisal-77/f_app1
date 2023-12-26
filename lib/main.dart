import 'dart:async';
import 'package:flutter/material.dart';
import 'package:f_app1/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    // calling startSplashScreenTimer method,to start the timer
    startSplashScreenTimer();
  }

  // Because we using Timer and it is a Future Object, we used async keyword
  startSplashScreenTimer() async {
    var _duration = const Duration(seconds: 10);
    return Timer(_duration, navigationToNextPage);
  }

  void navigationToNextPage() async {
    Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => loginPage()),
      (Route<dynamic> route) => false, //
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[300],
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 100,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: AssetImage('assets/icon_splash.png'),
                  width: 250,
                  height: 250,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.grey[300],
              ),
              Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 50),
                  child: const Text(
                    'My Splash Screen',
                    style: TextStyle(color: Colors.amber, fontSize: 25),
                  ))
            ]),
      ),
    );
  }
}
