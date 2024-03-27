// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:alibaba_clone/view/components/styles.dart';
import 'package:alibaba_clone/view/interest_page.dart';
import 'package:alibaba_clone/view/login_page.dart';
import 'package:alibaba_clone/view/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double d_width = MediaQuery.of(context).size.width;
    double d_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: d_height,
          child: Column(
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
                    "Sign In",
                    style: TextStyle(
                        fontSize: 20, color: black, fontWeight: FontWeight.w600),
                  ),
                  hspace,
                  Icon(Icons.search),
                ],
              ),
              vspace,
              vspace,
              Text(
                "Wellcome Back",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: black,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
              svspace,
              Text(
                "We make global trading simple",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              vspace,
              vspace,
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
                    "Sign In",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              vspace,
              vspace,
              Text(
                "Forgot Password?",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 15,
                    color: Colors.grey,
                    decorationColor: Colors.grey),
              ),
              vspace,
              vspace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                    child: Text("Register",
                        style: TextStyle(
                            color: orange, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ],
          ),
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
