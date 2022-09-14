import 'package:flutter/material.dart';

class LoanCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      elevation: 3,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Icon(Icons.bolt_outlined),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(child: const Text(' Kes. 1250')),
            Container(
                child: const Text('Loans value',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red))),
          ],
        ),
      ]),
    ));
  }
}
