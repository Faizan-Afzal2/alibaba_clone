
import 'package:alibaba_clone/controller/providers/interest_provider.dart';
import 'package:alibaba_clone/controller/providers/main_screen_provider.dart';
import 'package:alibaba_clone/controller/providers/signup_provider.dart';
import 'package:alibaba_clone/view/get_started.dart';
import 'package:alibaba_clone/view/interest_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => SignUpProvider())),
        ChangeNotifierProvider(create: ((context) => InterestProvider())),
        ChangeNotifierProvider(create: ((context) => MainProvider())),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
        home: GetStarted(),
        // home: Source(),
      ),
    );
  }
}
