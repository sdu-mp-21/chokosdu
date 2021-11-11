import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sdutea/constant.dart';
import 'header_with_searchbox.dart';
import 'package:flutter_svg/svg.dart';

import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          // it will cover 40% of total width
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RecommendDonerCard(
                  image: "assets/images/doner1.jpg",
                  title: "Doner",
                  type: "Chiken Meat",
                  price: 790,
                  press: () {},
                ),
                RecommendDonerCard(
                  image: "assets/images/doner1.jpg",
                  title: "Doner",
                  type: "Beef Meat",
                  price: 990,
                  press: () {},
                ),
                RecommendDonerCard(
                  image: "assets/images/doner1.jpg",
                  title: "Doner",
                  type: "Assorti",
                  price: 890,
                  press: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RecommendDonerCard extends StatelessWidget {
  const RecommendDonerCard({
    Key? key,
    required this.image,
    required this.title,
    required this.type,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, type;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.39,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                      text: "$type".toUpperCase(),
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                    ),
                  ])),
                  Spacer(),
                  Text(
                    '\ $price T',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
