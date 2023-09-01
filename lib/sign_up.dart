import 'package:bpcl_project/homepage.dart';
import 'package:bpcl_project/navigationscreen.dart';
import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  const textfield({Key? key}) : super(key: key);

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  TextEditingController nocontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  void login() {
    String phoneno = nocontroller.text;
    String password = passwordcontroller.text;
    if (phoneno == '1234' && password == '1234') {
      Navigator.push(context, MaterialPageRoute(builder: (c) => homepage()));
    } else {
      // Incorrect credentials, show an error message
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Ooops'),
            content:
                Text('Please enter the correct mobile number and password.'),
            actions: [
              ElevatedButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Center(
              child: Column(children: [
            SizedBox(height: 80),
            Image.asset("images/remove.png", height: 250, width: 250),
            SizedBox(height: 10),
            Text("Welcome back you've be missed!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  controller: nocontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Mobile number",
                  )),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Password",
                  )),
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text("Forget password ?",
                      style: TextStyle(color: Colors.grey[700])),
                )
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  login();
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[700],
                  ),
                ),
                Text("Or Continue With",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600)),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/google-search-icon-google-product-illustration-free-png.webp",
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: 10),
                Image.asset(
                  "images/logos.png",
                  height: 70,
                  width: 70,
                )
              ],
            )
          ])),
        ));
  }
}
