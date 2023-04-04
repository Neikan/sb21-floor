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
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: isSelected ? Colors.green : Colors.green.shade100,
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: Image.asset(path),
      ),
    );
  }
}
