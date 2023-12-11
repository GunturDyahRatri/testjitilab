import 'package:flutter/material.dart';
import 'package:testjitilab/constant/pallets.dart';

void showMessage(String? message, BuildContext? context) {
  ScaffoldMessenger.of(context!).showSnackBar(SnackBar(
    content: Text(
      message!,
      style: TextStyle(color: Pallets.grey),
    ),
    backgroundColor: Pallets.lightBlue,
  ));
}
