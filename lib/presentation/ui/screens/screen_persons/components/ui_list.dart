part of '../screen_persons.dart';

class _UiList extends StatelessWidget {
  final List<AppPerson> persons;
  final Map<String, String> cards;

  const _UiList({
    required this.persons,
    required this.cards,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: persons.length,
      itemBuilder: (_, index) {
        final person = persons[index];

        return _UiListTile(
          person: person,
          card: cards[person.id.toString()]!,
        );
      },
    );
  }
}
