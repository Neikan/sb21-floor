part of '../screen_person.dart';

class _UiAvatar extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String path;

  const _UiAvatar({
    required this.isSelected,
    required this.onTap,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 96,
        height: 96,
        color: isSelected ? Colors.green : Colors.green.shade100,
        child: Image.asset(path),
      ),
    );
  }
}
