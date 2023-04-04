part of '../screen_persons.dart';

class _UiListTile extends StatelessWidget {
  final AppPerson person;
  final String card;

  const _UiListTile({
    required this.person,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(16.0),
      minVerticalPadding: 0.0,
      leading: CircleAvatar(
        backgroundColor: Colors.greenAccent.shade100,
        maxRadius: 24,
        backgroundImage: AssetImage(person.avatar),
      ),
      title: Text('${person.name} ${person.surname}'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UiTextRich(
            label: labelsPerson[keyAge]!,
            value: person.age.toString(),
          ),
          UiTextRich(
            label: labelsPerson[keyPhone]!,
            value: person.phone.toString(),
          ),
          UiTextRich(
            label: labelsPerson[keyCard]!,
            value: card,
          ),
        ],
      ),
      onTap: () {
        final arguments = {
          keyPerson: person,
          keyCard: card,
        };

        Navigator.of(context).pushNamed(
          routePerson,
          arguments: arguments,
        );
      },
      onLongPress: () => context
          .read<BlocPersons>()
          .add(BlocPersonsEventRemove(id: person.id)),
    );
  }
}
