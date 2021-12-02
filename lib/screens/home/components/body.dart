import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'featured_menu.dart';
import 'header_with_seachbox.dart';
import 'recomend_doners.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          // it will cover 40% of total width
          RecomendDoners(),
          TitleWithMoreBtn(title: "Featured Menu", press: () {}),
          FeaturedMenu(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
