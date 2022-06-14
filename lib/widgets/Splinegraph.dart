import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../data/constants.dart';

class Splinegraph extends StatefulWidget {
  const Splinegraph({Key? key}) : super(key: key);

  @override
  State<Splinegraph> createState() => _SplinegraphState();
}

class _SplinegraphState extends State<Splinegraph> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2010, 35),
      ChartData(2011, 10),
      ChartData(2012, 34),
      ChartData(2013, 17),
      ChartData(2014, 60),
      ChartData(2015, 24),
      ChartData(2016, 10),
      ChartData(2017, 32),
      ChartData(2018, 9),
      ChartData(2019, 40)
    ];
    return Container(
        height: 100.h,
        width: 200.w,
        color: Colors.transparent,
        child: SfCartesianChart(
            plotAreaBorderWidth: 0,
            primaryXAxis: CategoryAxis(
              isVisible: false,
            ),
            primaryYAxis: NumericAxis(isVisible: false),
            series: <ChartSeries>[
              SplineSeries<ChartData, int>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                color: kWhitePrimary,
              )
            ]));
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}
