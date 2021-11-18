import 'package:flutter/material.dart';
import 'package:sdutea/constant.dart';
import 'package:sdutea/screens/details/details_screen.dart';

class RecommendDoners extends StatelessWidget {
  const RecommendDoners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendDonerCard(
            image: "assets/images/doner1.jpg",
            title: "Doner",
            type: "Chiken Meat",
            price: 790,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendDonerCard(
            image: "assets/images/sandwich.jpg",
            title: "Sandwich",
            type: "Sausage",
            price: 400,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendDonerCard(
            image: "assets/images/burger.jpg",
            title: "Burger",
            type: "Beef Meat",
            price: 450,
            press: () {},
          ),
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
      width: size.width * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      ),
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
