part of '../screen_persons.dart';

class _UiEmptyData extends StatelessWidget {
  final String text;

  const _UiEmptyData({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people,
            color: Colors.green.shade300,
            size: 48,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
