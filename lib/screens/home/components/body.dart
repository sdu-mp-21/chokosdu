import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sdutea/constant.dart';
import 'package:sdutea/screens/home/components/recommend_doners.dart';
import 'featured_menu.dart';
import 'header_with_searchbox.dart';

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
          RecommendDoners(),
          TitleWithMoreBtn(title: "Featured Menu", press: () {}),
          FeaturedMenu(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
