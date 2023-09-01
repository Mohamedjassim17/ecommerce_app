import 'package:bpcl_project/navigations/personalcare/shampoo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quickalert/quickalert.dart';

class feedbackpage extends StatefulWidget {
  const feedbackpage({Key? key}) : super(key: key);

  @override
  State<feedbackpage> createState() => _feedbackpageState();
}

class _feedbackpageState extends State<feedbackpage> {
  @override
  Widget build(BuildContext context) {
    int rating = 4;
    TextEditingController feeds = TextEditingController();
    void showsucess() {
      QuickAlert.show(
        context: context,
        title: "Feedback submitted",
        confirmBtnColor: Colors.green,
        type: QuickAlertType.success,
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Feedback",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(height: 60),
            Text("Give feedback",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 5),
            Text("What to think of ui part?",
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.black)),
            SizedBox(height: 15),
            RatingBar.builder(
              initialRating: 3.5,
              itemCount: 5,
              minRating: 1,
              direction: Axis.horizontal,
              itemSize: 50,
              itemBuilder: (context, _) =>
                  Icon(Icons.star, color: Colors.orange.shade700, size: 50),
              onRatingUpdate: (index) {},
            ),
            SizedBox(height: 50),
            Text("Do you have any thoughts like to share ?",
                style: TextStyle(color: Colors.black)),
            SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextField(
                    controller: feeds,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        hintText: "Enter the text here",
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none),
                    maxLines: null,
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            SizedBox(height: 30),
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade700, onPrimary: Colors.black),
                  onPressed: () {
                    showsucess();
                    feeds.clear();

                    //Navigator.pop(context);
                  },
                  child: Text("Submit",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
            )
          ]),
        ),
      ),
    );
  }
}
