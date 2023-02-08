import 'package:flutter/material.dart';
import 'package:mediaquers/widgets/content/carrousel.dart';
import 'package:mediaquers/widgets/content/ishorizontal.dart';
import 'package:mediaquers/widgets/content/isvertical.dart';
import 'package:mediaquers/widgets/content/vertical_navbar.dart';

import '../sidebar/vertical_carrousel.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isVerticalG(BuildContext context) =>
        MediaQuery.of(context).size.width < 500;

    bool isHorizontall(BuildContext context) =>
        MediaQuery.of(context).size.width >= 500;

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: double.infinity,
              decoration: BoxDecoration(color: Colors.yellow.shade100),
              child: Center(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    if (isVerticalG(context)) const BannerIMG(),
                    if (isHorizontall(context)) const HorizontalBanner(),
                    const SizedBox(
                      height: 15,
                    ),
                    if (isVerticalG(context)) const VerticalNavBar(),
                    if (isHorizontall(context)) const IsHorizontal(),
                    if (isVerticalG(context)) const IsVerticall(),
                    if (isVerticalG(context))
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.green.shade100,
                                ),
                                const Spacer(),
                                Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.green.shade100,
                                ),
                                const Spacer(),
                                Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.green.shade100,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
