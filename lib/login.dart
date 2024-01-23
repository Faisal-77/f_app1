import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Faisal",
    home: loginPage(),
  ));
}

final _formKey = GlobalKey<FormState>();

class loginPage extends StatelessWidget {
  loginPage({super.key});
  final TextEditingController username = TextEditingController();
  final TextEditingController pass = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("f_app1"),
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                "Main Activity",
                style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
              alignment: Alignment.center,
            ),
            Container(
              width: 355,
              child: TextFormField(
                controller: username,
                decoration: InputDecoration(
                  labelText: "Username",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
              padding: EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15))),
              margin: new EdgeInsets.only(top: 40),
            ),
            Container(
              width: 355,
              child: TextFormField(
                controller: pass,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "password",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              padding: EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              margin: new EdgeInsets.only(bottom: 15.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      String user = username.text;
                      String passs = pass.text;
                      if (user == "Faisal" && passs == "1234") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondPage(user)));
                      }
                    },
                    child: Text('Login'),
                  ),
                  // margin: new EdgeInsets.symmetric(horizontal: 15.0),
                ),
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      username.clear();
                      pass.clear();
                    },
                    child: Text('Clear'),
                  ),
                  // margin: new EdgeInsets.symmetric(horizontal: 15.0),
                ),
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () => exit(0),
                    child: Text('Close'),
                  ),
                  // margin: new EdgeInsets.symmetric(horizontal: 15.0),
                ),
              ],
            )
          ],
        ));
  }
}

class SecondPage extends StatelessWidget {
  final String user;
  const SecondPage(this.user,{super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Column(
        children: [
          Text(user),
          Container(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          )
        ],
      ),
    ));
  }
}
