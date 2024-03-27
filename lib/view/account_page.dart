// ignore_for_file: prefer_const_constructors

import 'package:alibaba_clone/view/components/common_widgets.dart';
import 'package:alibaba_clone/view/components/styles.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.qr_code_2_rounded),
                    Spacer(),
                    Text("USD"),
                    hspace,
                    Icon(Icons.settings)
                  ],
                ),
              ),
              vspace,
              vspace,
              Row(
                children: [],
              ),
              vspace,
              vspace,
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: const Color.fromARGB(255, 196, 195, 195),
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: const Color.fromARGB(255, 95, 95, 95),
                    ),
                  ),
                  hspace,
                  MyRoundButton(
                    onPress: () {},
                    label: "SignIn or Register",
                    gradColors: [orange, orange2],
                    vpadding: 5,
                    hpadding: 10,
                    labelStyle: TextStyle(fontSize: 12, color: white),
                  )
                ],
              ),
              vspace,
              Container(
                  // width: 400,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 102, 155, 247)
                          .withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 270,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Alibaba.com membeship",
                              style: TextStyle(color: black, fontSize: 8),
                            ),
                            Text(
                              "Join for unlimited benifit and coupons for sourcing with benifits",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 12,
                                  height: 1.2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      MyRoundButton(
                        onPress: () {},
                        label: "Join",
                        gradColors: [white, white],
                        vpadding: 3,
                        hpadding: 10,
                        labelStyle: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
              ListTile(
                leading: Icon(Icons.airplane_ticket_sharp),
                title: Text("Check this out to get your coupon"),
              )
            ],
          ),
        )),
      ),
    );
  }
}
