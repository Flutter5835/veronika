enum Terms {
  helloWorld('Hello World'),
  byeWorld('Bye World');

  static String activeTitle(bool isDark) =>
      isDark ? byeWorld.title : helloWorld.title;

  final String title;

  const Terms(this.title);
}
