import 'package:ecommerce_store_screen/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class barchart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  barchart({Key? key}) : super(key: key);

  @override
  _barchartState createState() => _barchartState();
}

class _barchartState extends State<barchart> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('CHN', 12, 38),
      _ChartData('GER', 15, 35),
      _ChartData('RUS', 30, 39),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 260,
      color: Colors.transparent,
      child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          palette: <Color>[CustomColor.kbluecont, CustomColor.kpink],
          primaryXAxis: CategoryAxis(isVisible: false),
          primaryYAxis: NumericAxis(minimum: 0, maximum: 50, isVisible: false),
          tooltipBehavior: _tooltip,
          series: <ChartSeries<_ChartData, String>>[
            BarSeries<_ChartData, String>(
              borderRadius: BorderRadius.circular(3),
              spacing: 0.2,
              width: 0.7,
              dataSource: data,
              xValueMapper: (_ChartData data, _) => data.x,
              yValueMapper: (_ChartData data, _) => data.y,
            ),
            BarSeries<_ChartData, String>(
              borderRadius: BorderRadius.circular(3),
              spacing: 0.2,
              width: 0.7,
              dataSource: data,
              xValueMapper: (_ChartData data, _) => data.x,
              yValueMapper: (_ChartData data, _) => data.z,
            )
          ]),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.z);

  final String x;
  final double y;
  final double z;
}
