part of '../screen_persons.dart';

class _UiButtonCreate extends StatelessWidget {
  const _UiButtonCreate();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.of(context).pushNamed(routePerson),
      child: const Icon(Icons.person_add),
    );
  }
}
