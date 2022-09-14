import 'package:flutter/material.dart';

class RevenueCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      elevation: 3,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Icon(Icons.attach_money),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(child: const Text(' Kes. 20,550')),
            Container(
                child: const Text('Total Revenue',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ],
        ),
      ]),
    ));
  }
}
