import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

bool _switchValue = false;

Widget customButton(String key, String value, String icon) {
  return InkWell(
    child: ListTile(
      leading: Image.asset(
        "assets/$icon.png",
        height: 24,
      ),
      title: Text(
        key,
        style: const TextStyle(color: Colors.white),
      ),
      trailing: Wrap(
        spacing: 12,
        children: [
          if (value == "switch")
            CupertinoSwitch(
                value: _switchValue,
                onChanged: (value) {
                  _switchValue = value;
                }),
          if (value != "switch")
            Text(
              value,
              style: const TextStyle(color: Colors.white),
            ),
          if (value != "switch")
            Image.asset(
              "assets/vector.png",
              height: 18,
            ),
        ],
      ),
    ),
  );
}
