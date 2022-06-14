import 'package:financial_goal/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Newbar extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Newbar({Key? key}) : super(key: key);

  @override
  _NewbarState createState() => _NewbarState();
}

class _NewbarState extends State<Newbar> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Feb', 550),
      _ChartData('Mar', 600),
      _ChartData('Apr', 650),
      _ChartData('May', 700),
      _ChartData('Jun', 600),
      _ChartData('Jul', 450),
      _ChartData('Aug', 400),
      _ChartData('Jul', 700)
    ];
    _tooltip = TooltipBehavior(
        enable: true,
        color: kWhitePrimary,
        header: "",
        textStyle: TextStyle(color: kBlackBackground),
        tooltipPosition: TooltipPosition.pointer);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 250.h,
      width: 400.h,
      child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          primaryXAxis: CategoryAxis(
              labelStyle: const TextStyle(
                color: kWhitePrimary,
                fontWeight: FontWeight.bold,
              ),
              axisLine: const AxisLine(width: 0),
              majorTickLines: const MajorTickLines(width: 0),
              minorTickLines: const MinorTickLines(width: 0),
              minorGridLines: const MinorGridLines(width: 0),
              majorGridLines: const MajorGridLines(width: 0)),
          primaryYAxis: NumericAxis(isVisible: false),
          tooltipBehavior: _tooltip,
          series: <ChartSeries<_ChartData, String>>[
            ColumnSeries<_ChartData, String>(
                borderRadius: BorderRadius.circular(6.r),
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                color: kWhitePrimary)
          ]),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
