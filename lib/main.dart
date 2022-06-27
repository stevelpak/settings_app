import 'package:flutter/material.dart';
import 'package:settings/utils/constants.dart';
import 'package:settings/widgets/border_button.dart';
import 'package:settings/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Settings(),
    );
  }
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final LinearGradient _gradient = const LinearGradient(
      colors: [Colors.white24, Colors.transparent],
      transform: GradientRotation(45));
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
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 50,
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
            UnicornOutlineButton(
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "General",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 21),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 20),
                        padding: const EdgeInsets.all(3),
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
                              customButton("Security", "Face Id", "FaceID"),
                              customButton("icloud Sync", "Face Id", "iCloud"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "My Subscriptions",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 21),
                  ),
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 20),
                          padding: const EdgeInsets.all(3),
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
                                customButton("Sorting", "Date", "sorting"),
                                customButton("Summary", "Average", "chart"),
                                customButton(
                                    "Default currency", "USD (\$)", "money"),
                              ],
                            ),
                          ))
                    ],
                  ),
                  const Text(
                    "Appearance",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 21),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(3),
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
                              customButton("Sorting", "Default", "app_icon"),
                              customButton("Summary", "Dark", "light_theme"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
