// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:alibaba_clone/view/components/styles.dart';
import 'package:alibaba_clone/view/interest_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double d_width = MediaQuery.of(context).size.width;
    double d_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: d_height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.clear,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 20, color: black, fontWeight: FontWeight.w600),
                ),
                hspace,
                Icon(Icons.search),
              ],
            ),
            vspace,
            vspace,
            vspace,
            Text(
              "to enjoy secure payments and free features",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromARGB(255, 141, 141, 141),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            vspace,
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 14, 77, 129),
              radius: 25,
            ),
            svspace,
            Text("---------  OR  ---------"),
            svspace,
            Container(
              width: 330,
              height: 44,
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                cursorColor: black,
                cursorWidth: 1,
                decoration: InputDecoration(
                    label: Text("Name"),
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            vspace,
            Container(
              width: 330,
              height: 44,
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                cursorColor: black,
                cursorWidth: 1,
                decoration: InputDecoration(
                    label: Text("Email"),
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            vspace,
            svspace,
            Container(
              width: 330,
              height: 44,
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                cursorColor: black,
                cursorWidth: 1,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: orange,
                  ),
                  label: Text("Password"),
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            vspace,
            vspace,
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: d_width * 0.40, vertical: 10),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [orange2, orange],
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    )),
                child: const Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
            vspace,
            vspace,
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text.rich(TextSpan(
                style: TextStyle(
                  fontSize: 12, 
                  color: Colors.grey
                ),
                children: [
                TextSpan(text: "By creating account, i agree to abide by "),
                TextSpan(
                    text: "  Alibaba.com's Free membership Agreemant",
                    style: TextStyle(color: Colors.blue)),
                TextSpan(text: "\nI would like to receive membership and services emails")
              ])),
            )
          ],
        ),
      ),
    );
  }
}

class Sourcing extends StatelessWidget {
  const Sourcing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Categories()));
                  },
                  child: Text("Skip this step"))
            ],
          )
        ],
      ),
    );
  }
}
