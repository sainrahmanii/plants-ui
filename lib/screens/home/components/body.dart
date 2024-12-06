import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';
import 'package:plant_ui/screens/home/components/featured_plants.dart';
import 'package:plant_ui/screens/home/components/header_with_search_box.dart';
import 'package:plant_ui/screens/home/components/recomend_plants.dart';
import 'package:plant_ui/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: 'Recomended', press: () {}),
          const RecomendPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
