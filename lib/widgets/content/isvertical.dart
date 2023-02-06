import 'package:flutter/material.dart';

class IsVerticall extends StatelessWidget {
  const IsVerticall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        VerticalCard(),
        VerticalCard(),
        VerticalCard(),
        VerticalCard(),
      ],
    );
  }
}

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        color: Colors.red.shade100,
        height: 150,
        width: 400,
        child: Row(
          children: [
            Image.asset(
              "assets/img/Foto.jpg",
              height: 150,
              width: 150,
            ),
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
                            fontWeight: FontWeight.bold, fontSize: 20),
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
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.favorite)),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Comprar")),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
