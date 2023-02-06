import 'package:flutter/material.dart';
import 'package:mediaquers/widgets/content/content.dart';
import 'package:mediaquers/widgets/sidebar/sidebar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isHorizontal(BuildContext context) =>
        MediaQuery.of(context).size.width >= 500;

    double screenheigth = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Alto: $screenheigth, ancho: $screenwidth '),
      ),
      body: Row(
        children: [
          if (isHorizontal(context)) const SideBar(),
          const Content(),
        ],
      ),
    );
  }
}
