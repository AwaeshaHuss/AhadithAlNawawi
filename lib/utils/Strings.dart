import 'package:flutter/material.dart';

abstract class TextApp {
  static const Text splashScreen = const Text(
    "الأربعون النوويه",
    style: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
  );

  static const Text topHomeScreen = const Text(
    "الأربعون النوويه",
    textDirection: TextDirection.rtl,
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
  );
  static const Text headerHomeScreen = const Text(
    "لحفظ وسماع الأحاديث النوويه",
    style: TextStyle(
        color: Colors.green, fontWeight: FontWeight.bold, fontSize: 26),
  );

  static const Text bookOneScreen = const Text("الأحاديث الاربعون");
  static const Text bookTwoScreen = const Text("الإستماع للأحاديث");
  static const Text bookThreeScreen = const Text("الأحاديث المحفوظه");
}
