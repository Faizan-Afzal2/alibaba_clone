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
    this.gradColors = const [Colors.black, Colors.black],
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
      decoration: BoxDecoration(
          color: swhite, borderRadius: BorderRadius.all(Radius.circular(15))),
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomRight: Radius.circular(15),
                  ),
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

// ignore: must_be_immutable
class FrontContainer extends StatelessWidget {
  String text;
  String assets;
  Color color;

  FrontContainer({
    super.key,
    required this.text,
    required this.assets,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(left: 12, right: 5, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            child: Text(
              text,
              style: TextStyle(color: white, fontSize: 13),
            ),
          ),
          shspace,
          Image.asset(
            assets,
            height: 40,
            width: 40,
          ),
        ],
      ),
    );
  }
}

// Icon stylig

class MyIcon extends StatelessWidget {
  IconData icon;
  double size;
  double weight;
  Color? color = black;
  MyIcon(
      {super.key,
      required this.icon,
      this.size = 20,
      this.color,
      this.weight = 10});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: color,
        weight: weight,
      ),
    );
  }
}

class MyCard1 extends StatelessWidget {
  String image;
  String? topText;
  String? title;
  String? descriptions;
  String? extras;
  double height;
  double width;
  FontWeight extraWeight;
  double extrasize;
  double radius;
  double imageRadius;

  MyCard1({
    super.key,
    required this.image,
    this.topText,
    this.title,
    this.descriptions,
    this.extras,
    this.extrasize = 10,
    this.extraWeight = FontWeight.w300,
    this.width = 145,
    this.height = 200,
    this.radius = 12,
    this.imageRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(6),
        constraints: BoxConstraints(maxHeight: 300, maxWidth: 145),
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: swhite, borderRadius: BorderRadius.circular(radius)),
        child: Column(
          children: [
            topText != null
                ? Center(
                    child: Container(
                        width: 110,
                        child: MyText(
                          text: topText!,
                          weight: FontWeight.w600,
                          size: 14,
                        )))
                : svspace,
            vspace,
            Container(
              height: 130,
              width: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerRight),
                borderRadius: BorderRadius.circular(imageRadius),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            title != null ? MyText(text: title!) : Container(),
            descriptions != null
                ? MyText(
                    text: descriptions!,
                  )
                : Container(),
            extras != null
                ? MyText(
                    text: extras!,
                    size: extrasize,
                    weight: extraWeight,
                  )
                : Container(),
          ],
        ));
  }
}

class MyCard2 extends StatelessWidget {
  String image;
  String? delivery;
  String? descriptions;
  String? extras;
  String? quantity;
  double height;
  String? price;
  double width;
  FontWeight extraWeight;
  double extrasize;
  double radius;
  double imageRadius;

  MyCard2({
    super.key,
    required this.image,
    this.delivery,
    this.descriptions,
    this.extras,
    this.quantity,
    this.price,
    this.extrasize = 10,
    this.extraWeight = FontWeight.w400,
    this.width = 155,
    this.height = 250,
    this.radius = 12,
    this.imageRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 300, maxWidth: 165),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 155,
            decoration: BoxDecoration(
              // color: black,
              image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerRight),
              borderRadius: BorderRadius.circular(imageRadius),
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          svspace,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                delivery != null
                    ? MyText(
                        text: delivery!,
                        size: 10,
                        weight: FontWeight.w400,
                      )
                    : Container(),
                svspace,
                descriptions != null
                    ? MyText(
                        size: 10,
                        text: descriptions!,
                        lineHeight: 1,
                        alignment: TextAlign.left,
                        weight: FontWeight.w500,
                      )
                    : Container(),
                vspace,
                MyText(
                  text: price!,
                  size: 15,
                  weight: FontWeight.w600,
                ),
                // svspace,
                quantity != null
                    ? MyText(
                        text: quantity!,
                        size: 10,
                        weight: FontWeight.w500,
                      )
                    : Container(),
                svspace,
                extras != null
                    ? MyText(
                        text: extras!,
                        size: extrasize,
                        weight: extraWeight,
                      )
                    : Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyShopHeader extends StatelessWidget {
  String shopImage;
  String storeName;
  String description;
  String extras;
  List<String> products;
  MyShopHeader({
    super.key,
    required this.shopImage,
    required this.storeName,
    required this.description,
    required this.extras,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(shopImage),
                ),
              ),
            ),
            hspace,
            hspace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: storeName,
                  size: 16,
                  weight: FontWeight.w700,
                  overflow: TextOverflow.ellipsis,
                  maxline: 1,
                ),
                svspace,
                MyText(
                  text: description,
                  size: 12,
                  weight: FontWeight.w500,
                ),
                svspace,
                MyText(
                  text: extras,
                  size: 12,
                  weight: FontWeight.w400,
                ),
                svspace,
              ],
            ),
          ],
        ),
        Row(
          children: [
            SmallCard(img: products[0]),
            shspace,
            SmallCard(img: products[1]),
            shspace,
            SmallCard(img: products[2]),
            shspace,
          ],
        )
      ],
    );
  }
}

class SmallCard extends StatelessWidget {
  String img;
  SmallCard({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 110,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(img),
              ),
            ),
          ),
          MyText(
            text: "US\$ 0.26",
            weight: FontWeight.w500,
          ),
          svspace,
          MyText(
            text: "20 peices (MOQ)",
            weight: FontWeight.w400,
            size: 10,
          ),
        ],
      ),
    );
  }
}
