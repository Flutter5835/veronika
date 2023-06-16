part of '../view1.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final inh = _TermsTimeInh.of(context);

    return Column(
      children: [
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Terms.helloWorld.title),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Switch.adaptive(
                value: ThemeInh.of(context).value,
                onChanged: (value) {
                  ThemeInh.of(context).value = value;
                  if (value == true) {
                    inh.byeWorldTime.value = DateTime.now();
                  } else {
                    inh.helloWorldTime.value = DateTime.now();
                  }
                },
              ),
            ),
            Text(Terms.byeWorld.title),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ValueListenableBuilder(
                valueListenable: inh.helloWorldTime,
                builder: (context, value, child) => Text(
                  '${Terms.helloWorld.title} - ${value?.customTime()}',
                ),
              ),
              ValueListenableBuilder(
                valueListenable: inh.byeWorldTime,
                builder: (context, value, child) => Text(
                  '${Terms.byeWorld.title} - ${value?.customTime()}',
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Page2()),
        );
      },
      child: const Icon(Icons.navigate_next),
    );
  }
}
