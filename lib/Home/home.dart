import 'package:bima/Home/card_paid_widget.dart';
import 'package:bima/Home/loan_value_card.dart';
import 'package:bima/Home/revenue_total_card.dart';
import 'package:bima/Home/request_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'card_widget.dart';
import 'carousel_widget.dart';
import 'claims_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        height: 30,
        color: Colors.transparent,
      ),
      //for profile icon
      Container(
          padding: const EdgeInsets.only(bottom: 30),
          alignment: Alignment.topRight,
          child: const Icon(Icons.person, size: 40)),

      Expanded(
        child: SingleChildScrollView(
          child: Column(children: [
            //for product title
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: const Text('New Products',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black)),
                      child: const Text('View All',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            //for the carousel widget
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: const Carousel(),
            ),
            //for row of loans and deposits cards
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Container(
                          height: 170,
                          width: 157,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(22, 123, 173, 1),
                                Color.fromRGBO(5, 25, 55, 1),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                //for the title
                                Container(
                                    child: const Text('Loans',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20))),
                                // for the count
                                Container(
                                    child: const Text('10',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 42))),
                                // for the dates
                                Container(
                                    child: const Text('1 Jan - 31 May',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)))
                              ]))),
                    ),
                    Card(
                      child: Container(
                          height: 170,
                          width: 154,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(255, 116, 97, 1),
                                Color.fromRGBO(191, 80, 105, 1),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                //for the title
                                Container(
                                    child: const Text('Deposits',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20))),
                                // for the count
                                Container(
                                    child: const Text('16',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 42))),
                                // for the dates
                                Container(
                                    child: const Text('1 Jan - 31 May',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)))
                              ]))),
                    ),
                  ]),
            ),
            //for card of interest rate of loans
            Container(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                height: 150,
                child: Card(
                  elevation: 4,
                  child: Column(children: [
                    // for title text
                    Container(
                      alignment: Alignment.topLeft,
                      padding:
                          const EdgeInsets.only(left: 10, top: 15, bottom: 10),
                      child: const Text('Interest Rate of Loans',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    //for the numbers col
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Container(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 5),
                                child: const Text('24',
                                    style: TextStyle(fontSize: 20))),
                            Row(children: [
                              Container(
                                child: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text('13.8 %',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)))
                            ]),
                          ]),
                          // for thr graph
                          Container(
                              height: 70,
                              child: Image.asset('assets/images/graph.png'))
                        ]),
                  ]),
                )),
            //for card of value deposits
            Container(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                height: 150,
                child: Card(
                  elevation: 4,
                  child: Column(children: [
                    // for title text
                    Container(
                      alignment: Alignment.topLeft,
                      padding:
                          const EdgeInsets.only(left: 10, top: 15, bottom: 10),
                      child: const Text('Value of the deposits',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    //for the numbers col
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Container(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 5),
                                child: const Text('10,000',
                                    style: TextStyle(fontSize: 20))),
                            Row(children: [
                              Container(
                                child: const Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                  size: 20,
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text('24.5 %',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)))
                            ]),
                          ]),
                          // for thr graph
                          Container(
                              height: 70,
                              child: Image.asset('assets/images/graph.png'))
                        ]),
                  ]),
                )),
            //for investements card with button
            Container(
              height: 100,
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                    Container(
                        child: const Text('Investments',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold))),
                    Container(
                      padding: const EdgeInsets.only(left: 32),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black)),
                        child: const Text('View Here',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                        onPressed: () {},
                      ),
                    ),
                  ])),
            ),
            //for claims and requests cards
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Container(
                          height: 180,
                          width: 167,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(255, 116, 97, 1),
                                Color.fromRGBO(212, 164, 24, 1),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                //for the title
                                Container(
                                    child: const Text('Number of claims made',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14))),
                                // for the count
                                Container(
                                  child: const RequestPie(),
                                ),
                                // for the dates
                                Container(
                                    child: const Text('1 Jan - 31 May',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)))
                              ]))),
                    ),
                    Card(
                      child: Container(
                          height: 180,
                          width: 164,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(191, 80, 105, 1),
                                Color.fromRGBO(5, 25, 55, 1),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                //for the title
                                Container(
                                    child: const Text('Pending requests',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18))),
                                // for the count
                                Container(child: Pie3()),
                                // for the dates
                                Container(
                                    child: const Text('1 Jan - 31 May',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)))
                              ]))),
                    ),
                  ]),
            ),
            //for make claim card with button
            Container(
              height: 100,
              padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                    Container(
                        child: const Text('Make a claim',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold))),
                    Container(
                      padding: const EdgeInsets.only(left: 32),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black)),
                        child: const Text('Start Here',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                        onPressed: () {},
                      ),
                    ),
                  ])),
            ),
            //for card with 4 cards inside
            Container(
                height: 220,
                child: Card(
                    elevation: 4,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    height: 80,
                                    width: 170,
                                    child: CardWidget()),
                                Container(
                                    height: 80, width: 170, child: LoanCard())
                              ]),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    height: 80, width: 170, child: PaidCard()),
                                Container(
                                    height: 80,
                                    width: 170,
                                    child: RevenueCard())
                              ])
                        ]))),
          ]),
        ),
      )
    ]));
  }
}
