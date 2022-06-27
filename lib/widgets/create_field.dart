import 'package:flutter/material.dart';
import 'package:settings/widgets/custom_button.dart';

final LinearGradient _gradient = const LinearGradient(
    colors: [Colors.white24, Colors.transparent],
    transform: GradientRotation(45));

Widget createField(List<String> fields) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 15, bottom: 25),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          gradient: _gradient,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: const Color(0xFF30303C),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              for (var i = 0; i < fields.length; i += 3)
                customButton(fields[i], fields[i + 1], fields[i + 2])
            ],
          ),
        ),
      )
    ],
  );
}
