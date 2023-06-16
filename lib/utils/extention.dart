extension DateTimeExt on DateTime {
  String customTime() {
    return '$this'.substring(0, 16);
  }
}
