import 'package:flutter/material.dart';
import 'widgets/navigationBar.dart';
import 'package:app_tp1/widgets/navigationBar.dart';
import 'écrans/media.dart';
import 'écrans/home.dart';
import 'écrans/about.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Video games Library';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: NavigBar(),
    );
  }
}
