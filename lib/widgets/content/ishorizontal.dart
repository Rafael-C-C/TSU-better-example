import 'package:flutter/material.dart';

class IsHorizontal extends StatelessWidget {
  const IsHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HorizontalCard(),
        HorizontalCard(),
        HorizontalCard(),
      ],
    );
  }
}

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(40)),
        height: 160,
        width: 500,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: const [
                      Text(
                        "Titulo 1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "Description",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Precio: 500",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Comprar")),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.favorite)),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: const [
                    ImageExample(),
                    ImageExample(),
                  ],
                ),
                Row(
                  children: const [
                    ImageExample(),
                    ImageExample(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImageExample extends StatelessWidget {
  const ImageExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Image.asset(
        "assets/img/Foto.jpg",
        height: 60,
        width: 60,
      ),
    );
  }
}
