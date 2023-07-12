import 'package:arukari/widgets/big_text.dart';
import 'package:arukari/widgets/marseille.dart';
import 'package:flutter/material.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: 600,
      child: Column(
        children: [
          Container(
            color: const Color(0xff4b61dd),
            child: Row(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner-marketplace.png"),
                      fit: BoxFit.fitHeight, //
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(children: const [
                    BigText(
                      "Introducing Mekari Marketplace",
                      12,
                      color: Colors.white,
                      maxWidth: 300,
                    ),
                    BigText(
                      "Find essential add-ons for Talenta to drive your productivity",
                      16,
                      color: Colors.white,
                      maxWidth: 300,
                    ),
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: 600,
            height: 257,
            color: Colors.white,
            child: const MyTabbedWidget(),
          ),
        ],
      ),
    );
  }
}
