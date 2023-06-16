import 'package:flutter/material.dart';
import 'package:veronika/controller/theme.dart';
import 'package:veronika/views/view1.dart';

void main() {
  runApp(
    ThemeInh(
      notifier: ValueNotifier(false),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness:
            ThemeInh.of(context).value ? Brightness.dark : Brightness.light,
      ),
      home: const Page1(),
    );
  }
}
