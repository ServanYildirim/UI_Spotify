import 'package:flutter/material.dart';
import 'package:spotify_ui_design/screens/anasayfa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnaSayfa();
  }
}
