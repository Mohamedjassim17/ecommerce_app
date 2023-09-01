import 'package:bpcl_project/feedbaxkpage.dart';
import 'package:bpcl_project/homepage.dart';
import 'package:bpcl_project/navigations/household/sweingpage.dart';
import 'package:bpcl_project/sign_up.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:bpcl_project/thememanger.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import 'main.dart';
import 'navigations/meats/kellychcicken.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  String feedback = "";
  bool flag = false;

  Future<void> showalertpage(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Provide Feedback'),
          content: TextField(
            onChanged: (value) {
              feedback = value;
            },
            decoration: const InputDecoration(
              hintText: 'Enter your feedback here',
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Send Feedback'),
            ),
          ],
        );
      },
    );
  }

  final String phno = 'tel:8754749569';
  final String website = "http://www.bharatpetroleum.in/";

  void launchnumber() async {
    if (await canLaunch(phno)) {
      await launch(phno);
    } else {
      throw 'error';
    }
  }

  void launchweb() async {
    if (await canLaunch(website)) {
      launch(website);
    } else {
      throw 'error';
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<themeprovider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.orange.shade100,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "images/4605067.png",
              height: 50,
              width: 50,
            ),
          )
        ],
        title: Text("Settings",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.dark_mode,
                      color: themeProvider.isDarkMode
                          ? Colors.orange.shade200
                          : Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Dark mode",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Spacer(),
                Switch(
                  value: themeProvider.isDarkMode,
                  onChanged: (newvalue) {
                    themeProvider.toggleDarkMode();
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.headphones,
                    color: themeProvider.isDarkMode
                        ? Colors.orange.shade200
                        : Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Help and Support",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        launchnumber();
                      },
                      icon: Icon(
                        Icons.chevron_right,
                        size: 30,
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.question_mark_rounded,
                    color: themeProvider.isDarkMode
                        ? Colors.orange.shade200
                        : Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("About me",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        launchweb();
                      },
                      icon: Icon(
                        Icons.chevron_right,
                        size: 30,
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    color: themeProvider.isDarkMode
                        ? Colors.orange.shade200
                        : Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Refer & earn",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Share.share("Please checkout the App");
                      },
                      icon: Icon(
                        Icons.chevron_right,
                        size: 30,
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    color: themeProvider.isDarkMode
                        ? Colors.orange.shade200
                        : Colors.black,
                    Icons.feedback,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Feddback",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => feedbackpage()));
                      },
                      icon: Icon(
                        Icons.chevron_right,
                        size: 30,
                      )),
                  SizedBox(height: 50)
                ],
              ),
            ),
            SizedBox(
                height: 50,
                width: 170,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange.shade200,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => textfield()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Logout",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.logout),
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
