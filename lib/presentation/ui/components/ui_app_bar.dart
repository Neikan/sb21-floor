// Flutter imports:
import 'package:flutter/material.dart';

const _sizeAppBar = 56.0;

class UiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const UiAppBar({
    super.key,
    required this.title,
    this.leading,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(_sizeAppBar);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: leading,
      actions: actions,
    );
  }
}
