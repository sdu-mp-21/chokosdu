import 'package:flutter/material.dart';

import '../../../constant.dart';

class FeaturedMenu extends StatelessWidget {
  const FeaturedMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeatureMenuCard(
            image: "assets/images/toast.jpg",
            press: () {},
          ),
          FeatureMenuCard(
            image: "assets/images/toast.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeatureMenuCard extends StatelessWidget {
  const FeatureMenuCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding * 2,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.39,
        height: 225,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
