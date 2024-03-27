import 'package:flutter/material.dart';

// Color orange= Color.fromARGB(0, 228, 103, 14);
Color orange=  const Color.fromARGB(255, 229, 81, 1);
Color orange2=const Color.fromARGB(255, 240, 101, 27);
Color peach=const  Color(0xabffd7ca);
Color swhite=const  Color(0xffF4F4F4);
Color white=const  Color.fromARGB(255, 255, 255, 255);
Color lgrey=const  Color.fromARGB(255, 221, 221, 221);
Color dgrey=const Color.fromARGB(226, 203, 203, 203);
Color black=const  Color.fromARGB(226, 9, 9, 9);
Color brown=const  Color(0xab51200b);


SizedBox hspace = SizedBox(
  width: 10,
);
SizedBox shspace = SizedBox(
  width: 5,
);
SizedBox vspace = SizedBox(
  height: 10,
);
SizedBox svspace = SizedBox(
  height: 5,
);

// Text for headings

class MyHeading extends StatelessWidget {
  String text;
  double size;
  Color? color = black;
  FontWeight weight;
  MyHeading({
    super.key,
    required this.text,
    this.color,
    this.size = 19,
    this.weight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: weight),
    );
  }
}
class MyText extends StatelessWidget {
  String text;
  double size;
  Color? color = black;
  FontWeight weight;
  TextAlign alignment;
  TextOverflow overflow;
  int maxline;
  double lineHeight;
  MyText({
    super.key,
    required this.text,
    this.color,
    this.lineHeight=1.4,
    this.alignment=TextAlign.center,
    this.size = 12,
    this.weight = FontWeight.w400,
    this.overflow = TextOverflow.ellipsis,
    this.maxline=2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      overflow: overflow,
      maxLines: maxline,
      
      style: TextStyle(color: color, fontSize: size, fontWeight: weight, height: lineHeight),
    );
  }
}



// double device_width= MediaQuery.of(context).size.width;
// double device_height = MediaQuery.of(context).size.height;



