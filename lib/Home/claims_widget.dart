import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

class Pie3 extends StatefulWidget {
  @override
  _Pie3State createState() => _Pie3State();
}

class _Pie3State extends State<Pie3> {
  final dataMap = <String, double>{
    "Completion": 7,
    "Complete": 3,
  };

  final colorList = <Color>[
    const Color.fromRGBO(170, 108, 154, 1),
    const Color.fromRGBO(231, 239, 255, 1),
  ];

  int key = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: PieChart(
        emptyColor: Colors.transparent,
        chartRadius: 75,
        legendOptions: const LegendOptions(
          showLegends: false,
        ),
        dataMap: dataMap,
        chartType: ChartType.ring,
        baseChartColor: Colors.transparent,
        colorList: colorList,
        centerText: "18",
        chartValuesOptions: const ChartValuesOptions(
            chartValueStyle: TextStyle(color: Colors.white),
            chartValueBackgroundColor: Colors.transparent,
            showChartValuesInPercentage: false,
            showChartValues: false),
        totalValue: 10,
      ),
    );
  }
}
