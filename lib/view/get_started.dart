// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:alibaba_clone/view/components/styles.dart';
import 'package:alibaba_clone/view/interest_page.dart';
import 'package:alibaba_clone/view/login_page.dart';
import 'package:alibaba_clone/view/sign_in_page.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    double d_width = MediaQuery.of(context).size.width;
    double d_height = MediaQuery.of(context).size.height;
    return Scaffold(
      // body: Container(
      //   height: d_height,
      //   width: d_width,
      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage("assets/images/landing.jpeg"),
      //           fit: BoxFit.cover)),
      //   child: Column(
      //     children: [
      //       Positioned(
      //         top: d_height*0.8,
      //           child: ElevatedButton(
      //         onPressed: () {},
      //         style: ElevatedButton.styleFrom(
      //             backgroundColor: orange,
      //             shape: StadiumBorder(),
      //             padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
      //         child: Text("Get Started"),
      //       ))
      //     ],
      //   ),
      // ),

      body: Stack(
        // alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            "assets/images/landing.jpeg",
            height: d_height,
            width: d_width,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            colorBlendMode: BlendMode.darken,
          ),
          //  Content start from here
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Source()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: d_width * 0.32, vertical: 10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [orange2, orange],
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                vspace,
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: d_width * 0.28, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: const Text(
                      "Login/Register",
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
         
          Positioned(
            left:  20,
            top: 350,
             
              child: Container(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          height: 35,
                          width: 250,
                        ),
                        vspace,
                        vspace,
                        Text(
                          "Your Sorcing journey starts here",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        vspace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                            
                              "200M+ products",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        vspace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              "200K+ suppliers",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        vspace,
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              "Purchase protection from",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
          )
        ],
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
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Categories()));
              }, child: Text("Skip this step"))
            ],
          )
        ],
      ),
    );
  }
}

