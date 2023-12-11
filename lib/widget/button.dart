import 'package:flutter/material.dart';
import 'package:testjitilab/constant/pallets.dart';

Widget customButton(
    {VoidCallback? tap,
    bool? status = false,
    String? text = 'Save',
    bool? isValid = false,
    BuildContext? context}) {
  return GestureDetector(
    onTap: isValid == true ? null : tap,
    child: Container(
      height: 48,
      margin: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: status == false
                  ? Pallets.primary2
                  : Pallets.grey,
          borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context!).size.width,
      child: Text(status == false ? text! : 'Please wait ...',
      style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    ),
  );
}
