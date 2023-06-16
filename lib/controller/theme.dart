import 'package:flutter/material.dart';

class ThemeInh extends InheritedNotifier<ValueNotifier<bool>> {
  const ThemeInh({
    super.key,
    super.notifier,
    required super.child,
  });

  static ValueNotifier<bool> of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeInh>()!.notifier!;
  }
}
