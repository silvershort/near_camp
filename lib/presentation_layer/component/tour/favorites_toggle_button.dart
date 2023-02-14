import 'package:flutter/material.dart';

class FavoritesToggleButton extends StatefulWidget {
  const FavoritesToggleButton({
    Key? key,
    required this.isSelected,
    required this.onSelected,
    required this.onUnSelected,
  }) : super(key: key);
  final bool isSelected;
  final VoidCallback onSelected;
  final VoidCallback onUnSelected;

  @override
  State<FavoritesToggleButton> createState() => _FavoritesToggleButtonState();
}

class _FavoritesToggleButtonState extends State<FavoritesToggleButton> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  void didUpdateWidget(covariant FavoritesToggleButton oldWidget) {
    print("@@@ didupdatewidget : ${widget.isSelected}");
    if (oldWidget.isSelected != widget.isSelected) {
      setState(() {
        _isSelected = widget.isSelected;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("@@@ build _isSelected : $_isSelected}");
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
        if (_isSelected) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            widget.onSelected();
          });
        } else {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            widget.onUnSelected();
          });
        }
      },
      child: Icon(
        _isSelected ? Icons.favorite : Icons.favorite_border,
        color: Colors.deepOrange,
      ),
    );
  }
}
