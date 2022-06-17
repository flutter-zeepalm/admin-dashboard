import 'package:ecommerce_store_screen/data/constants.dart';
import 'package:flutter/material.dart';

class TopSellingModel {
  final int count;
  final String title;
  final Color textcolor;
  TopSellingModel({
    required this.count,
    required this.title,
    required this.textcolor,
  });
}

List<TopSellingModel> sellinglist = [
  TopSellingModel(
      count: 1, title: "Grid Crop Cami top", textcolor: CustomColor.kdarkblue),
  TopSellingModel(
      count: 2, title: "Grid Crop Cami top", textcolor: CustomColor.kdarkblue),
  TopSellingModel(
      count: 3, title: "Grid Crop Cami top", textcolor: CustomColor.kdarkblue),
  TopSellingModel(
      count: 4, title: "Grid Crop Cami top", textcolor: CustomColor.kgrey),
  TopSellingModel(
      count: 5, title: "Grid Crop Cami top", textcolor: CustomColor.kgrey),
  TopSellingModel(
      count: 6, title: "Grid Crop Cami top", textcolor: CustomColor.kgrey),
  TopSellingModel(
      count: 7, title: "Grid Crop Cami top", textcolor: CustomColor.kgrey),
  TopSellingModel(
      count: 8, title: "Grid Crop Cami top", textcolor: CustomColor.kgrey),
  TopSellingModel(
      count: 9, title: "Grid Crop Cami top", textcolor: CustomColor.kgrey),
  TopSellingModel(
      count: 10, title: "Grid Crop Cami top", textcolor: CustomColor.kgrey),
];
