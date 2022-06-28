import 'package:flutter/material.dart';

import 'package:settings/utils/constants.dart';
import 'package:settings/widgets/border_button.dart';
import 'package:settings/widgets/create_text.dart';
import 'package:settings/widgets/create_field.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final LinearGradient _gradient = const LinearGradient(
      colors: [Colors.white24, Colors.transparent],
      transform: GradientRotation(45));
  final ScrollController _scrollController = ScrollController();
  bool isAvatar = false;

  @override
  void initState() {
    super.initState();
    _scrollListener();
  }

  void _scrollListener() {
    _scrollController.addListener(() {
      if (_scrollController.offset > 100) {
        if (!isAvatar) {
          setState(() {
            isAvatar = true;
          });
        }
      } else {
        if (isAvatar) {
          setState(() {
            isAvatar = false;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/ic_back_left.png",
            height: 24,
            color: appColor,
          ),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(color: Color(0XffA2A2B5)),
        ),
        actions: [
          if (isAvatar)
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                radius: 20,
                child: Image.asset("assets/avatar.png"),
              ),
            )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    child: Image.asset("assets/avatar.png"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    "John Doe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "j.doe@gmail.com",
                    style: TextStyle(
                        color: Color(0xFFA2A2B5), fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: UnicornOutlineButton(
                    strokeWidth: 2,
                    radius: 25,
                    gradient: _gradient,
                    bgColor: const Color(0xFF323239),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                      child: Text(
                        "Edit profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  createText("General"),
                  createField([
                    "Security",
                    "Face Id",
                    "FaceID",
                    "iCloud Sync",
                    "switch",
                    "iCloud"
                  ]),
                  createText("My Subscriptions"),
                  createField([
                    "Sorting",
                    "Date",
                    "sorting",
                    "Summary",
                    "Average",
                    "chart",
                    "Default currency",
                    "USD (\$)",
                    "money"
                  ]),
                  createText("Appereance"),
                  createField([
                    "Sorting",
                    "Default",
                    "app_icon",
                    "Summary",
                    "Dark",
                    "light_theme"
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
