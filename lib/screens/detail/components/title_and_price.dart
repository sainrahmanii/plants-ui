import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';

class TitleWithPrice extends StatelessWidget {
  const TitleWithPrice({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                TextSpan(
                  text: country,
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: const TextStyle(
              color: kPrimaryColor,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
