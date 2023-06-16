import 'package:flutter/material.dart';
import 'package:veronika/controller/theme.dart';
import 'package:veronika/utils/enums.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2')),
      body: Center(
        child: Text(
          Terms.activeTitle(ThemeInh.of(context).value),
        ),
      ),
    );
  }
}
