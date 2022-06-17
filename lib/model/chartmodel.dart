import 'package:ecommerce_store_screen/data/constants.dart';
import 'package:flutter/material.dart';

class ChartData {
  ChartData(
    this.x,
    this.y,
    this.z,
  );

  final String x;
  final double y;
  final double z;
}

List<ChartData> data = [
  ChartData(
    'tan',
    1000,
    950,
  ),
  ChartData(
    'Man',
    950,
    840,
  ),
  ChartData(
    'ppr',
    970,
    700,
  ),
  ChartData(
    'uay',
    800,
    700,
  ),
  ChartData(
    'aja',
    900,
    0,
  ),
  ChartData(
    'ust',
    800,
    0,
  ),
];

List<ChartData> activeuserdata = [
  ChartData(
    'tan',
    1000,
    950,
  ),
  ChartData(
    'Man',
    770,
    670,
  ),
  ChartData(
    'ppr',
    1050,
    950,
  ),
  ChartData(
    'uay',
    800,
    750,
  ),
  ChartData(
    'aja',
    800,
    0,
  ),
  ChartData(
    'ust',
    700,
    0,
  ),
];
