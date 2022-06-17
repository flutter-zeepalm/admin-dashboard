import 'package:ecommerce_store_screen/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../model/chartmodel.dart';

class Newbar extends StatefulWidget {
  final List<ChartData> listdata;
  // ignore: prefer_const_constructors_in_immutables
  Newbar({Key? key, required this.listdata}) : super(key: key);

  @override
  _NewbarState createState() => _NewbarState();
}

class _NewbarState extends State<Newbar> {
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    _tooltip = TooltipBehavior(
        enable: true,
        header: "",
        //textStyle: TextStyle(color: kBlackBackground),
        tooltipPosition: TooltipPosition.pointer);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 99,
      width: 250,
      child: SfCartesianChart(
          palette: <Color>[CustomColor.kbluecont, CustomColor.kpink],
          plotAreaBorderWidth: 0,
          primaryXAxis: CategoryAxis(
              isVisible: false,
              axisLine: const AxisLine(width: 0),
              majorTickLines: const MajorTickLines(width: 0),
              minorTickLines: const MinorTickLines(width: 0),
              minorGridLines: const MinorGridLines(width: 0),
              majorGridLines: const MajorGridLines(width: 0)),
          primaryYAxis: NumericAxis(
            isVisible: false,
            minimum: 0,
            maximum: 1000,
            majorGridLines: const MajorGridLines(width: 5),
            minorGridLines: const MinorGridLines(width: 5),
          ),
          tooltipBehavior: _tooltip,
          series: <ChartSeries<ChartData, String>>[
            ColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.circular(3),
              spacing: 0.2,
              width: 0.5,
              dataSource: data,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
            ),
            ColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.circular(3),
              spacing: 0.2,
              width: 0.5,
              dataSource: data,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.z,
            )
          ]),
    );
  }
}
