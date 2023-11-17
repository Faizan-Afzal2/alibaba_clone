import 'package:alibaba_clone/view/components/styles.dart';
import 'package:flutter/material.dart';

class MyRoundButton extends StatelessWidget {
  double? hpadding;
  double? vpadding;
  double? radius;
  String? label;
  VoidCallback onPress;
  TextStyle? labelStyle;
  List<Color> gradColors;

  MyRoundButton({
    this.hpadding = 60, 
    this.vpadding = 15,
    this.radius = 30,
    required this.onPress,
    required this.label,
    this.gradColors=const [Colors.black, Colors.black],
    this.labelStyle = const TextStyle(
        fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
  });

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: onPress,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: hpadding!, vertical: vpadding!),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: gradColors),
            borderRadius: BorderRadius.all(
              Radius.circular(radius!),
            )),
        child: Text(label!, style: labelStyle),
      ),
    );
  }
}

class SourceStack extends StatelessWidget {
  bool isSelected;
  SourceStack({super.key, this.isSelected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
                color: swhite,
                borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Stack(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //       color: swhite,
          //       borderRadius: BorderRadius.all(Radius.circular(15))),
          // ),

          Container(),

                Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 80,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100),bottomRight: Radius.circular(15),),
                  color: dgrey),
            ),
          ),
    
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "For resale",
                  style: TextStyle(
                    color: black,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                svspace,
                Text(
                  "Resell productas yo customers on other bussuness",
                  style: TextStyle(
                      color: black, fontSize: 12, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
    
          Positioned(
              top: 110,
              left: 110,
              child: Icon(
                Icons.construction_sharp,
                color: orange,
              ))
        ],
      ),
    );
  }
}
