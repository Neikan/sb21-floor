part of '../screen_person.dart';

const String _imageBatman = 'Batman.png';
const String _imageJoker = 'Joker.png';
const String _imageQuinn = 'Quinn.png';

const String _imagesPath = 'assets/images/';

const String _imagePathBatman = '$_imagesPath$_imageBatman';
const String _imagePathJoker = '$_imagesPath$_imageJoker';
const String _imagePathQuinn = '$_imagesPath$_imageQuinn';

class _UiAvatarPicker extends StatefulWidget {
  final Function(String) onSelect;
  final String path;

  const _UiAvatarPicker({
    required this.onSelect,
    required this.path,
  });

  @override
  State<_UiAvatarPicker> createState() => _UiAvatarPickerState();
}

class _UiAvatarPickerState extends State<_UiAvatarPicker> {
  late String selectedPath;

  @override
  void initState() {
    super.initState();

    selectedPath = widget.path.isEmpty ? _imagePathBatman : widget.path;

    widget.onSelect(selectedPath);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildImage(_imagePathBatman),
        _buildImage(_imagePathJoker),
        _buildImage(_imagePathQuinn),
      ],
    );
  }

  Widget _buildImage(String path) => _UiAvatar(
        onTap: () => _handleTap(path),
        isSelected: selectedPath == path,
        path: path,
      );

  void _handleTap(String path) {
    widget.onSelect(path);

    setState(() => selectedPath = path);
  }
}
