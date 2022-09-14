import 'package:flutter/material.dart';

class PaidCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      elevation: 3,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Icon(Icons.shopping_bag_outlined),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(child: const Text(' Kes. 7350')),
            Container(
                child: const Text('Paid premiums',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green))),
          ],
        ),
      ]),
    ));
  }
}
