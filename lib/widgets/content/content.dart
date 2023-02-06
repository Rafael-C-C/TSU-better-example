import 'package:flutter/material.dart';
import 'package:mediaquers/widgets/content/ishorizontal.dart';
import 'package:mediaquers/widgets/content/isvertical.dart';

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
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.yellow.shade100),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Content',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              if (isHorizontall(context)) const IsHorizontal(),
              if (isVerticalG(context)) const IsVerticall(),
            ],
          ),
        )),
      ),
    );
  }
}
