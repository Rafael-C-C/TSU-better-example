import 'package:flutter/material.dart';

class IsVerticall extends StatelessWidget {
  const IsVerticall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue.shade100,
        height: 400,
        width: 350,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.red.shade100,
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Column(
                            children: [
                              const Text(
                                "Soy un producto",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              const Text(
                                "Soy una descripción Soy una descripción Soy una descripción Soy una descripción",
                                style: TextStyle(fontSize: 15),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite)),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Añadir al carrito",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/img/Foto.jpg",
                          height: 100,
                          width: 100,
                        )
                      ],
                    )),
              );
            }));
  }
}
