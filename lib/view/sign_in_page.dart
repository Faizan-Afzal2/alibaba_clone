// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:alibaba_clone/view/components/styles.dart';
import 'package:alibaba_clone/view/interest_page.dart';
import 'package:alibaba_clone/view/login_page.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double d_width = MediaQuery.of(context).size.width;
    double d_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          // alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              "assets/images/login.jpg",
              height: d_height,
              width: d_width,
              fit: BoxFit.cover,
              
              filterQuality: FilterQuality.low,
              colorBlendMode: BlendMode.darken,
            ),
            //  Content start from here
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.clear, color: white,),
                         
                          Text(
                            "Signin/Register",
                            style: TextStyle(fontSize: 20, color: white),
                          ),
                          
                          Icon(Icons.search,color: white,),
                        ],
                      ),
                      vspace,
                      vspace,
                      vspace,
                      vspace,
                      Text(
                        "Signin for a streamline sourcing experience",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      vspace,
                    ],
                  ),
                  vspace,
                  InkWell(
                    onTap: () {
                    
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: d_width * 0.32, vertical: 10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [const Color.fromARGB(255, 22, 119, 199), Colors.blueAccent],
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          )),
                      child: const Text(
                        "Facebook",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  vspace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        height: 2,
                        color: white,
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                          color: white,
                          fontSize: 20
                        ),
                      ),
                    ],
                  ),
                  vspace,
                  InkWell(
                    onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: d_width * 0.21, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          )),
                      child: const Text(
                        "SignIn using email",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  vspace
                ],
              ),
            ),
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
