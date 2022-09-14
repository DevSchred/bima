import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      elevation: 3,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Icon(Icons.shopping_cart_outlined),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(child: const Text(' Kes. 1250')),
            Container(
                child: const Text('Premiums',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue))),
          ],
        ),
      ]),
    ));
  }
}
