import 'package:flutter/material.dart';

Widget customButton(String key, String value, String icon) {
  return InkWell(
    child: ListTile(
      leading: Image.asset(
        "assets/${icon}.png",
        height: 24,
      ),
      title: Text(
        key,
        style: const TextStyle(color: Colors.white),
      ),
      trailing: Wrap(
        spacing: 12,
        children: [
          Text(
            value,
            style: const TextStyle(color: Colors.white),
          ),
          Image.asset(
            "assets/vector.png",
            height: 18,
          ),
        ],
      ),
    ),
  );
}
