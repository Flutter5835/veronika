import 'package:flutter/material.dart';
import 'package:veronika/controller/theme.dart';
import 'package:veronika/utils/enums.dart';
import 'package:veronika/views/view2.dart';
import 'package:veronika/utils/extention.dart';

part 'widgets/view1_body.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  ValueNotifier<DateTime?> helloWorldTime = ValueNotifier(null);
  ValueNotifier<DateTime?> byeWorldTime = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Page 1')),
        body: _TermsTimeInh(
          helloWorldTime: helloWorldTime,
          byeWorldTime: byeWorldTime,
          child: const _Body(),
        ),
        floatingActionButton: const _FloatingActionButton(),
      ),
    );
  }
}

class _TermsTimeInh extends InheritedWidget {
  final ValueNotifier<DateTime?> helloWorldTime;
  final ValueNotifier<DateTime?> byeWorldTime;

  const _TermsTimeInh({
    super.key,
    required Widget child,
    required this.helloWorldTime,
    required this.byeWorldTime,
  }) : super(child: child);

  static _TermsTimeInh of(BuildContext context) {
    final _TermsTimeInh? result =
        context.dependOnInheritedWidgetOfExactType<_TermsTimeInh>();
    assert(result != null, 'No _TermsTimeInh found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(_TermsTimeInh old) {
    return false;
  }
}
